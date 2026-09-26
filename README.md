# Hi, I'm Benvin 👋

### AI Engineer | LLM Platforms & Applied AI

📍 Chennai, India | Open to Remote

AI Engineer with close to 4 years building production LLM infrastructure at scale. I work on a multi-provider LLM gateway routing **130M+ AI calls** (peak 950K/day) for **75+ internal product teams**, an enterprise guardrails pipeline, and full-stack AI observability — and I extend that work into personal projects: a released LLM gateway and an agentic RAG system with an evaluation harness.

## Current Focus

- Multi-provider LLM gateways & provider abstraction
- AI safety, guardrails & governed AI platforms
- Model routing, load balancing & self-hosted inference
- LLM evaluation & AI observability

## Tech Stack

**AI & LLM:** LLM Integration (OpenAI, Anthropic, Google Vertex AI, Cohere), RAG, Agentic AI (LangGraph), Embeddings, Vector Search (Qdrant), LLM Evaluation, Prompt Engineering, Guardrails & AI Safety

**LLM Serving:** vLLM, llama.cpp, MLX, Ollama

**Backend & Platform:** Python, FastAPI, Java, REST API Design, Redis, MySQL, SQLite, Docker, Linux, Tomcat, C++

**DevOps & Observability:** CI/CD (GitHub Actions), OpenTelemetry, Prometheus, Grafana, k6 Load Testing

**Tools:** Git, Claude Code, Postman, IntelliJ IDEA, VS Code

## Experience

**Member of Technical Staff** — Zoho Corporation *(Jan 2023 – Present)*

- Built and scaled a **multi-provider LLM gateway** unifying OpenAI, Anthropic, Google Vertex AI, and Cohere behind a single API — 130M+ AI calls for 75+ internal teams.
- Pitched and led an **AI Safety & Orchestration platform**, evolving the gateway from an API proxy into a governed PaaS product; approved by senior leadership and released internally to 100 teams.
- Architected a customizable **guardrails pipeline** (PII detection, abuse monitoring, topic/word/regex filters) on a Chain of Responsibility design, deployable against any LLM provider or self-hosted model.
- Developed a **Redis-based weighted L7 load balancer** to route inference traffic across internally hosted LLMs, optimizing GPU utilization.
- Designed and owned a platform-wide **credit system** (purchase, deduction, expiry, audit) as a reusable module.
- Shipped **end-to-end observability** across 130M+ requests and 57 endpoints for real-time cost attribution, usage, and error-rate insight; led an evaluation of LLM serving frameworks (vLLM, llama.cpp, MLX) to guide architecture.

## Featured Work

### 🚀 [Vortex AI Gateway](https://github.com/BenvinD/vortex-ai-gateway) — Multi-Provider LLM Gateway `v0.1.0`

`Python` `FastAPI` `httpx` `Redis` `SQLite` `OpenTelemetry` `Prometheus` `Grafana` `k6` `Docker`

- Async, **OpenAI-compatible** gateway routing OpenAI, Anthropic, and Ollama models behind one endpoint, with SSE streaming that meters every stream and cancels the upstream call on client disconnect.
- Resilience & governance: full-jitter retries under a wall-clock deadline, per-provider circuit breakers, fallback chains, hashed API keys, distributed per-key RPM/TPM rate limiting in a single atomic Redis Lua script, and a cost ledger.
- Two-tier cache (per-tenant exact + embedding-based semantic); a 40-pair threshold experiment found no safe similarity threshold, so the semantic tier **ships off by default** — documented in one of 29 ADRs.
- Latency/TTFT histograms, OpenTelemetry traces, and an 18-panel Grafana dashboard; k6 load testing and profiling exposed hidden tracing overhead — the fix cut per-request gateway cost by **17%** (**+21% throughput**).

### 🧠 [Lemma RAG](https://github.com/BenvinD/lemma-rag) — Agentic RAG with Evaluation Harness *(in progress)*

`Python` `LangGraph` `Qdrant` `Docling` `sentence-transformers`

- Agentic RAG built on top of Vortex AI Gateway: Docling ingestion, Qdrant **hybrid retrieval** (BM25 + dense) with hand-written Reciprocal Rank Fusion, and cross-encoder reranking.
- LangGraph agent with query rewriting, relevance grading, corrective re-retrieval, cited answers, and honest refusal.
- Evaluation harness (Recall@K, MRR, nDCG, faithfulness, LLM-as-judge) wired in as a **CI gate**.

## Education & Certifications

**B.Tech, Computer Science and Engineering** — Karunya Institute of Technology and Sciences *(2019 – 2023)*

- **Claude Certified Developer – Foundations (CCDV-F)** — Anthropic, 2026
- Building Video AI Applications at the Edge on Jetson Nano — NVIDIA DLI
- Building Real-Time Video AI Applications — NVIDIA DLI
- Fundamentals of Deep Learning — NVIDIA DLI

## Highlights

- **51st of 1,773** — HackerRank Orchestrate
- **Code Gladiator Finalist**, TechGig — 510th of 416,409
- **Team Lead**, Karunya Hacks — led a team of 20 for workshops and competitions
