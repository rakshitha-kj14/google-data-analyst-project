# 📊 Looker Studio Dashboard Structure
## User Retention & Revenue Analytics

This document outlines the structure, metrics, and visualizations for a
Google-style Looker Studio dashboard built on the
`subscription_user_behavior.csv` dataset.

---

## 🎯 Dashboard Objective

Enable Product, Marketing, and Leadership teams to:
- Monitor **churn and retention**
- Identify **high-value user segments**
- Understand **engagement behavior**
- Drive **data-backed optimization decisions**

---

## 🗂️ Data Source

- Source Type: CSV Upload / Google Sheets
- Dataset: `subscription_user_behavior.csv`
- Grain: **One row per user**
- Time Dimension: `signup_date`, `churn_date`

---

## 📄 Page 1: Executive Overview

### 🎯 Key KPIs (Scorecards)
- Total Users
- Active Users
- Churn Rate (%)
- Average Lifetime Value (LTV)
- Total Revenue

### 📈 Visuals
- Line Chart: Monthly Churn Trend
- Line Chart: Monthly Revenue Trend
- Bar Chart: Users by Plan Type

### 🎛 Filters
- Date Range (Signup Date)
- Country
- Plan Type

---

## 📄 Page 2: User Segmentation

### 📊 Visuals
- Bar Chart: Users by Subscription Plan
- Pie Chart: Users by Acquisition Channel
- Bar Chart: Users by Device Type
- Geo Map: Users by Country

### 🎯 Purpose
Identify where users come from and how they access the product.

---

## 📄 Page 3: Engagement & Retention Analysis

### 📊 Visuals
- Scatter Plot: Engagement Score vs Churn
- Bar Chart: Churn Rate by Feature Usage
- Heatmap: Sessions per Month vs Churn
- Box Plot: Engagement Score by Churn Status

### 🎯 Purpose
Understand how user behavior impacts churn and retention.

---

## 📄 Page 4: Revenue & LTV Analysis

### 📊 Visuals
- Bar Chart: Average LTV by Acquisition Channel
- Bar Chart: Revenue by Plan Type
- Table: High-Value Users (Top 10% LTV)

### 🎯 Purpose
Identify high-value segments and revenue drivers.

---

## 🧮 Calculated Fields (Looker Studio)

### Churn Rate










---

## 🧠 Stakeholder Questions This Dashboard Answers

- Which users are most likely to churn?
- What behaviors correlate with retention?
- Which acquisition channels bring high-LTV users?
- How does engagement impact revenue?
- Where should we invest marketing and product resources?

---

## 🚀 Business Impact

Insights from this dashboard support:
- Targeted onboarding improvements
- Smarter marketing spend allocation
- Feature adoption strategies
- Revenue growth and churn reduction

---

## 📌 Notes

- Designed for **executive + product audiences**
- Scalable to BigQuery for production use
- Aligned with Google analytics & reporting standards
