# Example usage (curl)
# 1) Embed
curl -X POST "http://localhost:8000/embed" -H "Content-Type: application/json" -d '{"text":"The bank reported increased credit utilisation last quarter."}'
# 2) Similarity
curl -X POST "http://localhost:8000/similarity" -H "Content-Type: application/json" -d '{"query":"credit utilization", "docs":["report about utilization","customer feedback about rewards"]}'