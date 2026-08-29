# Scaffolds

Sources for the two portfolio repositories linked from the profile README's
Featured Work section. They live here because they are the durable copy — the
repositories themselves are meant to be standalone, but they have to be
generated somewhere before they can be pushed.

| Scaffold | Becomes | Subject |
| --- | --- | --- |
| `ai-gateway/` | `<user>/ai-gateway` | Multi-provider LLM gateway: provider abstraction, PII guardrails, rate limiting, Redis load balancing |
| `agentic-rag/` | `<user>/agentic-rag` | Enterprise RAG: hybrid search (BM25 + vector), cross-encoder reranking, bidirectional guardrails |

Each README covers Problem, Architecture Diagram, Quickstart, Design Decisions
(ADRs), and Benchmarks.

## Usage

```bash
./scaffolds/bootstrap.sh ~/code
```

This copies each scaffold into the target directory, runs `git init`, and makes
an initial commit. Existing non-empty directories are skipped unless you pass
`--force`.

Publish them with:

```bash
gh repo create <user>/ai-gateway  --public --source ~/code/ai-gateway  --push
gh repo create <user>/agentic-rag --public --source ~/code/agentic-rag --push
```

Once the repositories are public, update the placeholder `#` links under
Featured Work in the profile `README.md`.

## Note on benchmarks

The benchmark tables in both READMEs are labelled as targets and methodology,
not measured results. Keep that framing until a real harness produces numbers —
a reviewer who spots an unsupported production SLA will discount the rest of
the repository.
