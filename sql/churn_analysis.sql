/* =========================================================
   Project: User Retention & Revenue Analysis
   Purpose: Identify churn drivers, high-value users,
            and engagement patterns for a SaaS product
   Author: <Your Name>
   ========================================================= */


/* ---------------------------------------------------------
   1. BASIC DATA VALIDATION
   --------------------------------------------------------- */

-- Total users
SELECT 
    COUNT(*) AS total_users
FROM subscription_user_behavior;

-- Check churn distribution
SELECT 
    churned,
    COUNT(*) AS user_count
FROM subscription_user_behavior
GROUP BY churned;


/* ---------------------------------------------------------
   2. CHURN RATE ANALYSIS
   --------------------------------------------------------- */

-- Overall churn rate
SELECT 
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior;

-- Churn rate by subscription plan
SELECT
    plan_type,
    COUNT(*) AS total_users,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY plan_type
ORDER BY churn_rate_percentage DESC;

-- Churn rate by device type
SELECT
    device_type,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY device_type
ORDER BY churn_rate_percentage DESC;


/* ---------------------------------------------------------
   3. ENGAGEMENT VS CHURN
   --------------------------------------------------------- */

-- Bucket users based on engagement score
SELECT
    CASE
        WHEN engagement_score < 500 THEN 'Low Engagement'
        WHEN engagement_score BETWEEN 500 AND 1500 THEN 'Medium Engagement'
        ELSE 'High Engagement'
    END AS engagement_segment,
    COUNT(*) AS users,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY engagement_segment
ORDER BY churn_rate_percentage DESC;

-- Feature usage vs churn
SELECT
    features_used,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY features_used
ORDER BY features_used;


/* ---------------------------------------------------------
   4. REVENUE & LIFETIME VALUE (LTV) ANALYSIS
   --------------------------------------------------------- */

-- Average lifetime value
SELECT
    ROUND(AVG(lifetime_value), 2) AS avg_lifetime_value
FROM subscription_user_behavior;

-- LTV by subscription plan
SELECT
    plan_type,
    ROUND(AVG(lifetime_value), 2) AS avg_ltv
FROM subscription_user_behavior
GROUP BY plan_type
ORDER BY avg_ltv DESC;

-- LTV by acquisition channel
SELECT
    acquisition_channel,
    ROUND(AVG(lifetime_value), 2) AS avg_ltv
FROM subscription_user_behavior
GROUP BY acquisition_channel
ORDER BY avg_ltv DESC;


/* ---------------------------------------------------------
   5. HIGH-VALUE USER SEGMENTATION
   --------------------------------------------------------- */

-- Identify high-value retained users
SELECT
    user_id,
    plan_type,
    acquisition_channel,
    lifetime_value,
    engagement_score
FROM subscription_user_behavior
WHERE churned = 0
  AND lifetime_value > (
        SELECT AVG(lifetime_value)
        FROM subscription_user_behavior
      )
ORDER BY lifetime_value DESC
LIMIT 100;


/* ---------------------------------------------------------
   6. COUNTRY & GEOGRAPHIC ANALYSIS
   --------------------------------------------------------- */

-- Churn rate by country
SELECT
    country,
    COUNT(*) AS users,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY country
ORDER BY churn_rate_percentage DESC;

-- Revenue contribution by country
SELECT
    country,
    ROUND(SUM(lifetime_value), 2) AS total_revenue
FROM subscription_user_behavior
GROUP BY country
ORDER BY total_revenue DESC;


/* ---------------------------------------------------------
   7. SUPPORT TICKETS & CHURN
   --------------------------------------------------------- */

-- Relationship between support tickets and churn
SELECT
    support_tickets,
    COUNT(*) AS users,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage
FROM subscription_user_behavior
GROUP BY support_tickets
ORDER BY support_tickets;


/* ---------------------------------------------------------
   8. EXECUTIVE SUMMARY METRICS
   --------------------------------------------------------- */

-- Key KPIs for dashboard
SELECT
    COUNT(*) AS total_users,
    SUM(CASE WHEN churned = 0 THEN 1 ELSE 0 END) AS active_users,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_percentage,
    ROUND(AVG(lifetime_value), 2) AS avg_ltv,
    ROUND(SUM(lifetime_value), 2) AS total_revenue
FROM subscription_user_behavior;