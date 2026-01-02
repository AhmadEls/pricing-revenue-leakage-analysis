
-- 1. Overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM customer_churn_raw;

-- 2. Early churn (0–12 months)
SELECT
    COUNT(*) AS early_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS early_churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS early_churn_rate_pct
FROM customer_churn_raw
WHERE tenure <= 12;

-- 3. Churn by contract type
SELECT
    Contract,
    COUNT(*) AS customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM customer_churn_raw
GROUP BY Contract
ORDER BY churn_rate_pct DESC;
