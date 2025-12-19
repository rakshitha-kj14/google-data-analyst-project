# 📊 Subscription Churn & Retention Analysis  
### Google-Style Data Analytics Case Study

## 🔍 Project Overview
This project analyzes subscription user behavior to identify churn drivers, engagement patterns, and revenue impact. The objective is to generate **actionable insights** that help product, growth, and leadership teams improve **user retention and lifetime value (LTV)**.

The analysis follows an **end-to-end Google analytics workflow**:
Data Cleaning → Exploration → SQL Analysis → Visualization → Business Recommendations.

---

## 🎯 Business Problem
Subscription-based digital products frequently struggle with high churn, leading to lost revenue and inefficient growth spend.

**Key Business Questions:**
- What user behaviors are most strongly associated with churn?
- Which customer segments are at highest churn risk?
- How does churn impact revenue and lifetime value?
- What actions can reduce churn and improve retention?

---

## 📁 Dataset
- **Records:** 100,000 users  
- **Type:** User-level behavioral and subscription data  
- **Source:** Synthetic dataset modeled after real SaaS subscription products  

**Key Fields**
- `user_id`
- `signup_date`
- `plan_type`
- `engagement_score`
- `sessions_per_month`
- `support_tickets`
- `monthly_price`
- `lifetime_value`
- `is_churned`

---

## 🛠 Tools & Technologies
- **SQL (GoogleSQL / BigQuery style)**
- **Python**: Pandas, NumPy, Matplotlib
- **Looker Studio**
- **Git & GitHub**

---

## 🔄 Analytical Workflow

### 1️⃣ Data Cleaning
- Converted text-based dates into valid date formats
- Validated churn indicators
- Checked for null values and outliers

### 2️⃣ Exploratory Data Analysis
- Distribution analysis of engagement and sessions
- Relationship between engagement and churn
- Revenue contribution by subscription plan

### 3️⃣ SQL Analysis
- Monthly churn trends
- Churn rate by plan type
- Engagement-based churn segmentation
- Revenue loss attributable to churn

### 4️⃣ Visualization
- Executive KPI dashboard
- Churn trends over time
- Behavioral churn drivers
- Revenue and LTV impact analysis

---

## 📈 Key Insights
- Overall churn rate is **~54%**, indicating significant retention challenges
- **Low-engagement users churn nearly 2× more** than high-engagement users
- **Basic plan subscribers** show the highest churn rates
- Users with multiple support tickets are more likely to churn
- Churned users represent **millions in lost lifetime revenue**

---

## 💡 Recommendations
- Improve onboarding experience during the first 30 days
- Proactively support users with repeated support interactions
- Introduce engagement nudges for low-engagement cohorts
- Monitor churn reduction impact using LTV-based metrics

---

## 📊 Dashboard
🔗 **Looker Studio Dashboard:**  
https://lookerstudio.google.com/reporting/93611903-909c-4e57-ac88-63cd6c8a9a8e

The dashboard provides an executive view of:
- Key performance indicators
- Churn trends
- Behavioral drivers
- Revenue and lifetime value impact

---

## 📌 Business Impact
If applied in a real product environment, these insights could:
- Reduce churn by **15–20%**
- Recover **$1M+ annually** in retention-driven revenue
- Enable data-driven prioritization for product and support teams

---

## 📂 Repository Structure
google-data-analyst-project/
│

├── data/
│ └── subscription_user_behavior.csv

├── analysis/
│ └── analysis.ipynb

├── sql/
│ └── churn_analysis.sql

├── dashboard/
│ └── looker_studio_structure.md

└── README.md


---

## 👤 Author
**Rakshitha KJ**  
Aspiring Data Analyst | SQL • Python • Looker Studio  

This project was created as a portfolio case study aligned with **Google Data Analyst role expectations**.
