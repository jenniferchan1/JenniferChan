# Semantic Analysis Engine

Business summary
- A modular text pipeline that can embed and analyze unstructured financial text (reports, news, customer reviews).
- Supports both Hugging Face Transformers and sentence-transformers for embeddings. Includes a small FastAPI wrapper for production-style serving.

Contents
- api/main.py — FastAPI app exposing /embed and /similarity
- src/embeddings.py — loader for both HF & sentence-transformers
- Dockerfile — build an image for deployment
- requirements.txt

Quickstart (local)
1. python -m venv .venv && source .venv/bin/activate
2. pip install -r requirements.txt
3. uvicorn api.main:app --reload --host 0.0.0.0 --port 8000
4. Use POST /embed with {"text":"..."} or /similarity with {"query":"...","docs":["..."]}