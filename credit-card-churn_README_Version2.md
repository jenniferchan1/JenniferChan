# Credit Card Customer Churn — Case Study

Business summary
- Problem: Predict which credit-card customers are likely to churn so the bank can intervene cost-effectively.
- Domain angle: Emphasize credit utilization, credit limit changes, and delinquency patterns as financial-risk and retention signals.

Quick results (example)
- Model: RandomForest pipeline
- Key metrics: ROC-AUC, Precision, Recall (we prioritize Recall for early intervention)
- Important features: avg_utilization_3m, credit_limit, delinquencies_last_12m, recent_balance_change

Contents
- notebooks/EDA.ipynb — exploratory analysis (visual story)
- data/synthetic_data.py — script to generate small synthetic dataset
- src/train.py — training pipeline (sklearn)
- src/eval.py — evaluation and plotting (ROC, feature importances)
- reports/business_impact.md — actionable mitigation protocols
- model_card.md — model purpose, metrics, limitations
- requirements.txt

Quickstart
1. python -m venv .venv && source .venv/bin/activate
2. pip install -r requirements.txt
3. python data/synthetic_data.py --out data/sample.csv
4. python src/train.py --data data/sample.csv --out models/rf.joblib
5. python src/eval.py --model models/rf.joblib --data data/sample.csv