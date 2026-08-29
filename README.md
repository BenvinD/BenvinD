# Hi, I'm Benvin 👋

### AI Engineer | LLM Platforms & Applied AI

📍 Chennai, India | Open to Remote

I build production AI systems and infrastructure. Core engineer behind an internal AI PaaS serving 55+ product teams and processing 25M+ requests.

## Current Focus

- Multi-provider LLM platforms
- AI safety & guardrails
- Model routing & inference
- AI observability & evaluation

## Tech Stack

**AI:** LLM APIs, RAG, Agents, Tool Calling, Evaluation, Guardrails

**Infrastructure:** Python, C++, Redis, Docker, Linux, REST, Distributed Systems

**LLM / Inference:** vLLM, LLAMA.cpp, MLX, PyTorch

## Featured Work

Public rebuilds of the problems I solve at work. Status is honest and current as of August 2026 — I link a repo once there is something worth reading in it.

- **🚀 AI Gateway** — Multi-provider LLM gateway: provider abstraction, PII guardrails, rate limiting, Redis-backed weighted load balancing. *Architecture and ADRs written; implementation in progress.*
- **🧠 Agentic RAG** — Enterprise RAG: hybrid retrieval (BM25 + vector), cross-encoder reranking, bidirectional guardrails, evaluation harness. *Architecture and ADRs written; implementation in progress.*
- **⚙️ TinyLLM** — A transformer trained from scratch, then a dependency-free C++ inference engine (tokenizer, attention, KV-cache, quantization). *Planned.*
- **🔧 LiteLLM (BerriAI)** — Contributions to the leading open-source multi-provider LLM gateway. *Planned.*

## What I've Shipped at Work

**Member of Technical Staff**, Zoho Corporation · Jun 2023 – Present

- Multi-provider LLM gateway unifying OpenAI, Anthropic, Google Vertex AI, and Cohere behind one API — **25M+ requests**, peak **521K/day**, **55+ internal product teams**.
- Model-agnostic guardrails pipeline (PII detection, abuse monitoring, topic/word/regex filters) built as a Chain of Responsibility, deployable against any provider or self-hosted model.
- Redis-based weighted L7 load balancer routing inference across self-hosted LLMs to raise GPU utilization.
- Platform-wide credit system and observability across 57 endpoints, giving teams real-time cost attribution, usage, and error-rate insight.
- Pitched an AI Safety & Orchestration platform to senior leadership — approved and taken into active development.

## Certifications

- **Claude Certified Developer — Foundations (CCDV-F)**, Anthropic — 970/1000

## Connect

[LinkedIn](https://www.linkedin.com/in/benvin-david/) · [Email](mailto:benvin.david.work@gmail.com) · [Twitter](https://twitter.com/Benvin_D)
