#!/usr/bin/env bash
#
# Recreate the ai-gateway and agentic-rag repositories from the scaffolds in
# this directory.
#
#   ./scaffolds/bootstrap.sh              # create in the current directory
#   ./scaffolds/bootstrap.sh ~/code       # create in ~/code
#   ./scaffolds/bootstrap.sh ~/code --force
#
# Each repository is created as a standalone git repo with an initial commit.
# Existing non-empty target directories are left untouched unless --force.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPOS=(ai-gateway agentic-rag)

TARGET_DIR="$PWD"
FORCE=0

for arg in "$@"; do
  case "$arg" in
    --force) FORCE=1 ;;
    -h|--help) sed -n '2,12p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*) echo "unknown option: $arg" >&2; exit 2 ;;
    *) TARGET_DIR="$arg" ;;
  esac
done

command -v git >/dev/null 2>&1 || { echo "git is required but not installed" >&2; exit 1; }

# A commit needs an identity; without one git fails after the files are staged,
# which leaves a confusing half-finished repo.
can_commit=1
if ! git config --get user.email >/dev/null 2>&1 || ! git config --get user.name >/dev/null 2>&1; then
  can_commit=0
fi

mkdir -p "$TARGET_DIR"
TARGET_DIR="$(cd "$TARGET_DIR" && pwd)"

for repo in "${REPOS[@]}"; do
  src="$SCRIPT_DIR/$repo"
  dest="$TARGET_DIR/$repo"

  if [ ! -d "$src" ]; then
    echo "skip $repo: no scaffold at $src" >&2
    continue
  fi

  if [ -d "$dest" ] && [ -n "$(ls -A "$dest" 2>/dev/null)" ] && [ "$FORCE" -ne 1 ]; then
    echo "skip $repo: $dest already exists and is not empty (use --force to overwrite)"
    continue
  fi

  mkdir -p "$dest"
  cp -R "$src/." "$dest/"

  if [ ! -d "$dest/.git" ]; then
    git -C "$dest" init -b main >/dev/null 2>&1 || {
      git -C "$dest" init >/dev/null
      git -C "$dest" symbolic-ref HEAD refs/heads/main
    }
  fi

  git -C "$dest" add -A

  if [ "$can_commit" -eq 1 ]; then
    if git -C "$dest" diff --cached --quiet; then
      echo "ok   $repo: nothing to commit at $dest"
    else
      git -C "$dest" commit -q -m "Initial commit: scaffold README and repository layout"
      echo "ok   $repo: initialized and committed at $dest"
    fi
  else
    echo "ok   $repo: initialized and staged at $dest (set git user.name/user.email, then commit)"
  fi
done

cat <<'EOF'

Next steps for each repository:

  gh repo create <user>/ai-gateway  --public --source ai-gateway  --push
  gh repo create <user>/agentic-rag --public --source agentic-rag --push

Then replace the placeholder links in the profile README's Featured Work section.
EOF
