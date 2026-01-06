# 📊 Pricing & Revenue Leakage Analysis (Telco Churn)

## Executive Summary
This project analyzes customer churn in a telecom subscription business to identify **revenue leakage**, **high-risk customer segments**, and **actionable retention opportunities**.

Using **Python, SQL-style analysis, and Power BI**, I examine key churn drivers—**tenure, pricing, contract type, payment behavior, and service features**—and translate analytical findings into **business-focused recommendations**.

The objective is not only to explain *why* customers churn, but to clearly highlight **where revenue is being lost and how it can be protected**.

---

## Business Problem
Customer churn directly impacts recurring revenue and increases customer acquisition costs.

This analysis addresses three core business questions:
- **Who is most likely to churn?**
- **Which pricing or product signals indicate revenue leakage?**
- **What targeted actions can reduce churn and protect revenue?**

---


---

## KPI Definitions (Business Reporting Contract)

**Reporting Grain:** 1 row = 1 customer (snapshot dataset)

**Time Context:** Snapshot dataset (churn label represents historical outcome, not a time-series churn event)

| KPI | Definition | Numerator | Denominator | Notes / Edge Cases |
|---|---|---:|---:|---|
| KPI \| Total Customers | Count of unique customers in dataset | DISTINCTCOUNT(customerID) | — | Use unique customerID (not row count). |
| KPI \| Churned Customers | Customers with Churn = 'Yes' | DISTINCTCOUNT(customerID where Churn='Yes') | — | Churn is a label in this dataset (not time-based). |
| KPI \| Churn Rate % | % of customers who churned | Churned Customers | Total Customers | Format as %; ensure slicers apply consistently. |
| KPI \| Early Churn Rate % (0–12m) | Churn rate among tenure ≤ 12 months | Churned Customers (tenure ≤ 12) | Total Customers (tenure ≤ 12) | Tenure measured in months; confirm tenure has no negatives. |

**Standard Filters (applies to all KPIs unless stated):**
- Include only records with non-null `customerID` and `Churn`
- Tenure-based KPIs use `tenure` in months

---


---

## Data Validation & Reconciliation

To ensure data quality and reporting accuracy, the following validation checks were performed before analysis and dashboarding.


---

### Data Validation Checks

| Check | Method | Result |
|---|---|---|
| Unique customer ID | COUNT(*) = COUNT(DISTINCT customerID) | ✅ Pass |
| Null churn labels | Checked Churn IS NOT NULL | ✅ Pass |
| Tenure validity | tenure >= 0 months | ✅ Pass |
| Monthly charges validity | MonthlyCharges > 0 | ✅ Pass |


---


### KPI Reconciliation (SQL vs Power BI)

| KPI | SQL Result | Power BI Result | Status |
|---|---:|---:|---|
| Total Customers | 7,043 | 7,043 | ✅ Match |
| Churned Customers | 1,869 | 1,869 | ✅ Match |
| Churn Rate % | 26.54% | 26.54% | ✅ Match |
| Early Churn Rate % (0–12m) | 47.4% | 47.4% | ✅ Match |


---



## Key Insights
- **Early-tenure customers are the highest risk**  
  Churn is heavily concentrated within the first 12 months of the customer lifecycle.

- **Higher monthly charges correlate with churn**  
  Suggesting pricing sensitivity and potential gaps between cost and perceived value.

- **Contract type strongly impacts retention**  
  Month-to-month contracts exhibit significantly higher churn compared to long-term contracts.

- **Payment behavior is a churn signal**  
  Customers using electronic checks churn at much higher rates than those on automatic payments.

- **Service bundles reduce churn**  
  Customers without technical support or online security churn nearly **3× more** than those with bundled services.

---

## High-Risk Customer Profile
Customers most likely to churn typically share the following characteristics:
- Short tenure (≤ 12 months)
- Month-to-month contracts
- Above-average monthly charges
- No technical support or online security
- Manual or electronic payment methods

---

## Business Recommendations
Based on the analysis, the following actions could meaningfully reduce churn and protect revenue:
- Strengthen **early customer onboarding and engagement**
- Incentivize migration to **long-term contracts**
- Bundle **technical support and online security services**
- Promote **automatic payment methods**
- Reassess pricing for high-cost plans to ensure value alignment

---

## Tools & Technologies
- **Power BI** – data modeling, DAX measures, interactive dashboards
- **Python** – Pandas, NumPy, exploratory data analysis (EDA)
- **SQL** – analytical queries, churn metrics, aggregations
- **Git & GitHub** – version control and project organization

---
## Outcome
This project demonstrates my ability to:
- Analyze real-world business problems using data
- Identify revenue risks and churn drivers
- Build clear, decision-focused dashboards
- Communicate insights to non-technical stakeholders
- Propose realistic, data-driven business actions

---

## Next Steps & Potential Extensions
If this analysis were extended further, potential next steps could include:

- **Cohort analysis** to track churn behavior by signup month and lifecycle stage  
- **Customer lifetime value (CLV) estimation** to quantify revenue impact of churn by segment  
- **Predictive churn modeling** to proactively identify high-risk customers  
- **A/B testing framework** to evaluate the effectiveness of retention strategies  
- **Deeper SQL-based pipelines** to support production-scale reporting  

These extensions would enable more proactive churn prevention and stronger revenue protection strategies.

---

## Project Structure

```
pricing-revenue-leakage-analysis/
├── powerbi/
│   └── Churn_Analysis.pbix
│
├── assets/
│   ├── Churn_Analysis.pdf
│   ├── Dashboard1.png
│   └── Dashboard2.png
│
├── python/
│   └── 01_data_understanding.ipynb
│
├── sql/
│   └── Churn_analysis.sql
│
├── data/
│   └── customer_churn_raw.csv
│
└── README.md


