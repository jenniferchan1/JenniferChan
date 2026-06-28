# Model Card — Credit Card Churn (RandomForest)

Model details
- Model type: RandomForestClassifier (sklearn pipeline)
- Trained on: synthetic sample (for demo). Replace with production dataset with appropriate governance.
- Purpose: Score customers for churn risk to prioritize retention and credit policy actions.

Intended use
- For product managers and risk/retention teams to identify customers for outreach or credit-line adjustments.
- Not for automated denial of credit or punitive decisions.

Metrics & evaluation
- Primary metrics: ROC-AUC, Recall (we prioritize capturing at-risk customers).
- Recommended operational metric: Precision@K and uplift vs. baseline.

Limitations & risks
- Synthetic or small datasets do not reflect production distributions.
- Potential bias by income band; test fairness across demographic slices.
- Data leakage risk: ensure features are time-ordered and reflect production availability.

Monitoring
- Track model drift on util_3m_avg, delinquencies, and precision/recall monthly.
- A/B test interventions before full rollout.

Data & provenance
- Provide lineage: data source IDs, extract timestamps, preprocessing scripts.