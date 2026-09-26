<h1 align="center">Hi, I'm Benvin 👋</h1>

<h3 align="center">AI Engineer · LLM Platforms · AI Safety & Guardrails</h3>

<p align="center">
  I build the infrastructure that lets whole organisations ship AI safely, reliably, and at scale —<br/>
  and I write down the decisions behind it.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Open%20to-Remote%20Roles-2ea44f?style=for-the-badge" alt="Open to remote roles" />
  <img src="https://img.shields.io/badge/Based%20in-India%20(IST%2C%20UTC%2B5%3A30)-0969da?style=for-the-badge" alt="Based in India, IST" />
  <img src="https://img.shields.io/badge/Experience-~4%20years-8250df?style=for-the-badge" alt="About 4 years of experience" />
</p>

---

## ⚡ At a glance

| | |
|---|---|
| 📈 **130M+ AI calls** routed through an LLM gateway I built and scaled (peak **950K/day**) | 👥 **75+ product teams** depend on it in production |
| 🛡️ **Pitched & led** an AI Safety platform — approved by senior leadership, released to **100 teams** | 🔌 **4 LLM providers** unified behind one API — OpenAI, Anthropic, Vertex AI, Cohere |
| 📊 **57 endpoints** instrumented for real-time cost, usage & error tracking | 🚀 **+21% throughput / −17% cost** from a profiling-driven fix in my open-source gateway |

## 🎯 What I'm looking for

**Remote roles** as an **AI Engineer**, **LLM Platform Engineer**, or **ML Infrastructure Engineer** — ideally where I can own AI platform problems end-to-end, from design doc to production: gateways, routing, guardrails, evaluation, and observability.

---

## 💼 Experience

### Member of Technical Staff — Zoho Corporation
*Jan 2023 – Present · Converted from intern to full-time*

- 🔀 **Multi-provider LLM gateway** — unified OpenAI, Anthropic, Google Vertex AI, and Cohere behind a single API, scaled to **130M+ AI calls** for **75+ product teams**, acting as the platform owner they work with directly.
- 🛡️ **AI Safety & Orchestration platform** — wrote the proposal, pitched, and led the evolution of the gateway from an API proxy into a governed PaaS product; approved by senior leadership and **released internally to 100 teams**.
- 🧱 **Guardrails pipeline** — customizable PII detection, abuse monitoring, and topic/word/regex filters using a Chain of Responsibility design, deployable against any LLM provider or self-hosted model.
- ⚖️ **Weighted L7 load balancer** (Redis-based) routing inference traffic across self-hosted LLMs to optimize GPU utilization, validated with stress testing.
- 💳 **Platform-wide credit system** — purchase, deduction, expiry, and audit — built as a reusable module.
- 📊 **End-to-end observability** across 130M+ requests and 57 endpoints (cost attribution, usage, error rates); led the evaluation of LLM serving frameworks (vLLM, llama.cpp, MLX) that guided architecture.

---

## 🚀 Featured Projects

### [Vortex AI Gateway](https://github.com/BenvinD/vortex-ai-gateway) — production-grade, OpenAI-compatible LLM gateway · `v0.1.0`

> One endpoint for OpenAI, Anthropic, and Ollama — with the resilience, governance, and observability you'd want in production.

- **Streaming done right** — SSE streaming that meters every stream and cancels the upstream call when the client disconnects.
- **Resilience** — full-jitter retries under a wall-clock deadline, per-provider circuit breakers, and fallback chains.
- **Governance** — hashed API keys, distributed per-key RPM/TPM rate limiting in a single atomic Redis Lua script, and a cost ledger.
- **Honest engineering** — built a two-tier cache (exact + semantic); a 40-pair experiment found no safe similarity threshold, so the semantic tier **ships off by default**.
- **Documented design** — every significant trade-off is captured in one of **29 Architecture Decision Records**.
- **Measured performance** — latency & TTFT histograms, OpenTelemetry traces, an 18-panel Grafana dashboard; k6 load testing exposed hidden tracing overhead, and the fix delivered **−17% per-request cost, +21% throughput**.

`Python` `FastAPI` `httpx` `Redis` `SQLite` `OpenTelemetry` `Prometheus` `Grafana` `k6` `Docker` `GitHub Actions`

### [Lemma RAG](https://github.com/BenvinD/lemma-rag) — agentic RAG with an evaluation harness · *in progress*

> Retrieval you can measure: every change gated by retrieval and answer-quality metrics in CI.

- **Hybrid retrieval** — Qdrant BM25 + dense embeddings, fused with hand-written Reciprocal Rank Fusion, then cross-encoder reranking.
- **Agentic loop** (LangGraph) — query rewriting, relevance grading, corrective re-retrieval, cited answers, and honest refusal.
- **Evaluation as a CI gate** — Recall@K, MRR, nDCG, faithfulness, and LLM-as-judge.
- Built on top of Vortex AI Gateway, with Docling document ingestion.

`Python` `LangGraph` `Qdrant` `Docling` `sentence-transformers`

---

## 🛠️ Tech Stack

**AI & LLM**
![OpenAI](https://img.shields.io/badge/OpenAI-412991?style=flat-square&logo=openai&logoColor=white)
![Anthropic](https://img.shields.io/badge/Anthropic-191919?style=flat-square&logo=anthropic&logoColor=white)
![Vertex AI](https://img.shields.io/badge/Vertex%20AI-4285F4?style=flat-square&logo=googlecloud&logoColor=white)
![Cohere](https://img.shields.io/badge/Cohere-39594D?style=flat-square)
![LangGraph](https://img.shields.io/badge/LangGraph-1C3C3C?style=flat-square&logo=langchain&logoColor=white)
![Qdrant](https://img.shields.io/badge/Qdrant-DC244C?style=flat-square)
![RAG](https://img.shields.io/badge/RAG-555555?style=flat-square)
![Guardrails](https://img.shields.io/badge/Guardrails%20%26%20AI%20Safety-555555?style=flat-square)
![LLM Evaluation](https://img.shields.io/badge/LLM%20Evaluation-555555?style=flat-square)

**LLM Serving**
![vLLM](https://img.shields.io/badge/vLLM-30A2FF?style=flat-square)
![llama.cpp](https://img.shields.io/badge/llama.cpp-555555?style=flat-square)
![MLX](https://img.shields.io/badge/MLX-000000?style=flat-square&logo=apple&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=flat-square&logo=ollama&logoColor=white)

**Backend & Platform**
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![C++](https://img.shields.io/badge/C++-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?style=flat-square&logo=redis&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat-square&logo=sqlite&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)

**DevOps & Observability**
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white)
![OpenTelemetry](https://img.shields.io/badge/OpenTelemetry-000000?style=flat-square&logo=opentelemetry&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white)
![k6](https://img.shields.io/badge/k6-7D64FF?style=flat-square&logo=k6&logoColor=white)

**Tools**
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)
![Claude Code](https://img.shields.io/badge/Claude%20Code-D97757?style=flat-square&logo=claude&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![IntelliJ IDEA](https://img.shields.io/badge/IntelliJ%20IDEA-000000?style=flat-square&logo=intellijidea&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-007ACC?style=flat-square&logo=visualstudiocode&logoColor=white)

---

## 🏆 Certifications & Achievements

- 🎖️ **Claude Certified Developer – Foundations (CCDV-F)** — Anthropic, 2026 · scored **970/1000**
- 🥇 **51st of 1,773** — HackerRank Orchestrate, 2026
- 🏅 **Code Gladiator Finalist** — TechGig, placed **510th of 416,409**
- 👥 **Team Lead, Karunya Hacks** — led a team of 20 running workshops and competitions
- 📜 NVIDIA DLI — Fundamentals of Deep Learning · Building Real-Time Video AI Applications · Video AI at the Edge on Jetson Nano

## 🎓 Education

**B.Tech, Computer Science and Engineering** — Karunya Institute of Technology and Sciences *(2019 – 2023)*

---

<p align="center">
  <b>💬 Hiring for a remote AI / LLM platform role?</b><br/>
  Let's talk — reach out through my GitHub profile and I'll share my full resume.
</p>
