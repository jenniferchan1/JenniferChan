# Business Impact & Mitigation Protocols

Key observations to include in README and executive summary:
- High utilization (>80%) strongly correlates with churn probability in our sample.
- Customers with small credit limits and recent delinquencies are highest risk.

Recommended mitigation actions
1. Proactive credit adjustments:
   - For customers with high utilization but good payment history, offer increased revolving credit or short-term liquidity to reduce churn risk.
2. Targeted retention campaigns:
   - Offer personalized retention offers to high-LTV accounts flagged as high risk (e.g., fee waivers, cash-back on next statement).
3. Monitoring & triage:
   - Prioritize outreach for customers with util_3m_avg>0.8 and months_on_book>12.
4. A/B test each intervention:
   - Randomize outreach and measure churn reduction and cost per retention. Use uplift modelling to quantify ROI.

KPIs to track
- Churn rate reduction (%)
- Cost per retention
- Lift in customer lifetime value (LTV)