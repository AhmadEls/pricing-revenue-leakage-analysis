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

## Project Structure

```text
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



---

## Outcome
This project demonstrates my ability to:
- Analyze real-world business problems using data
- Identify revenue risks and churn drivers
- Build clear, decision-focused dashboards
- Communicate insights to non-technical stakeholders
- Propose realistic, data-driven business actions

