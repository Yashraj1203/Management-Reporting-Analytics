-- FP&A Management Reporting — core SQL patterns
SELECT Month,
       SUM(Revenue) AS actual_revenue,
       SUM(BudgetRevenue) AS budget_revenue,
       SUM(Revenue - BudgetRevenue) AS revenue_variance
FROM monthly_data
GROUP BY Month
ORDER BY Month;

SELECT Segment,
       SUM(Revenue) AS actual_revenue,
       SUM(BudgetRevenue) AS budget_revenue,
       SUM(Revenue - BudgetRevenue) AS revenue_variance,
       SUM(EBIT) / NULLIF(SUM(Revenue),0) AS ebit_margin
FROM segment_data
GROUP BY Segment
ORDER BY actual_revenue DESC;

SELECT Month, Segment,
       Revenue - BudgetRevenue AS revenue_variance
FROM segment_data
WHERE Revenue - BudgetRevenue < 0
ORDER BY revenue_variance ASC;
