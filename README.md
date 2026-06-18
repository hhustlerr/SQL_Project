# 🛍️ Retail Customer Loyalty & Revenue Optimization Analytics

## 📌 Project Overview

This project focuses on analyzing retail customer purchasing behavior, promotional dependency, customer retention, and revenue contribution using SQL and Power BI.

The primary goal is to determine whether business growth is driven by genuine customer loyalty or by discount-driven purchases. Through SQL-based customer segmentation and interactive Power BI dashboards, the project uncovers high-value customer groups, geographic growth opportunities, and revenue optimization strategies.

---

## 🎯 Business Problem

Retail businesses often face challenges in understanding:

- Are customers purchasing because they genuinely prefer the brand or because of discounts?
- Which customer segments generate the highest revenue?
- Which regions demonstrate strong organic demand?
- How can retention be improved without increasing promotional spending?

This project addresses these questions through behavioral segmentation, KPI analysis, and data-driven insights.

---

## 🚀 Project Objectives

- Segment customers based on purchase history and discount behavior.
- Measure promotional dependency across customer groups.
- Identify high-value loyal customers.
- Analyze spending patterns across demographics.
- Discover geographic expansion opportunities.
- Generate actionable recommendations for revenue optimization.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|--------|---------|
| SQL | Data Cleaning & Analysis |
| PostgreSQL / SQL Server | Query Execution |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| Git & GitHub | Version Control |

---

## 📂 Dataset Overview

The dataset contains retail transaction records including:

- Customer ID
- Age
- Gender
- Location
- Product Category
- Purchase Amount
- Previous Purchases
- Discount Applied
- Promo Code Usage
- Review Ratings
- Shipping Type
- Payment Method
- Seasonal Purchases

### Dataset Size

- **4,000 Unique Customers**
- Multiple Product Categories
- Demographic & Transactional Information

---

# 📊 SQL Analysis Performed

## 1️⃣ Promotional Dependency Analysis

### Objective

Measure how many customers purchase primarily because promotions are available.

### SQL Logic

```sql
SELECT SUM(
    CASE
        WHEN discount_applied = 'Yes'
        AND promo_code_used = 'Yes'
        THEN 1
        ELSE 0
    END
) AS promo_dependent_customers
FROM retail_data;
```

### Business Value

Identifies the proportion of revenue dependent on discounts versus organic demand.

---

## 2️⃣ Customer Behavioral Segmentation

Customers were categorized into meaningful business segments.

### Segmentation Logic

```sql
CASE
    WHEN discount_applied = 'Yes'
         AND previous_purchases <= 15
         THEN 'Bargain Hunter'

    WHEN discount_applied = 'Yes'
         AND previous_purchases BETWEEN 16 AND 30
         THEN 'Opportunistic Buyer'

    WHEN discount_applied = 'Yes'
         AND previous_purchases > 30
         THEN 'Promo-Loving Loyal'

    WHEN discount_applied = 'No'
         AND previous_purchases <= 15
         THEN 'New Organic Customer'

    WHEN discount_applied = 'No'
         AND previous_purchases > 15
         THEN 'Pure Genuinely Loyal'

    ELSE 'Other'
END
```

### Customer Segments

| Segment | Description |
|----------|------------|
| Bargain Hunter | Buys mainly during discounts |
| Opportunistic Buyer | Moderate purchase frequency with discounts |
| Promo-Loving Loyal | Loyal but promotion dependent |
| New Organic Customer | New customer without discount dependency |
| Pure Genuinely Loyal | Loyal customer purchasing at full price |

---

## 3️⃣ Transaction Value Segmentation

Customers were classified according to purchase amount.

| Tier | Purchase Amount |
|--------|--------------|
| Low Spend | ≤ 40 |
| Medium Spend | 41 – 70 |
| High Spend | > 70 |

### Objective

Analyze purchasing power across customer groups.

---

## 4️⃣ Segment-Wise Revenue Analysis

### Objective

Compare:

- Customer Segments
- Purchase Value Tiers
- Revenue Contribution

### Key Findings

- Loyal customers generate high-margin revenue.
- Bargain hunters dominate lower-value purchases.
- Organic customers contribute healthier profits.

---

## 5️⃣ Seasonal & Demographic Analysis

### Dimensions Studied

- Season
- Gender
- Product Category
- Customer Segment

### Metrics Evaluated

- Total Orders
- Average Purchase Amount
- Revenue Contribution

### Purpose

Identify demand trends and customer preferences.

---

## 6️⃣ Geographic Opportunity Analysis

### Objective

Identify regions containing:

- High-spending customers
- Strong retention rates
- Low promotional dependency

### Business Impact

Enables smarter regional expansion and marketing investments.

---

## 7️⃣ Premium Customer Profiling

### VIP Customer Definition

```sql
discount_applied = 'No'
AND previous_purchases >= 40
```

### Metrics Analyzed

- Average Age
- Average Rating
- Preferred Payment Method
- Preferred Shipping Type

### Purpose

Develop targeted premium loyalty programs.

---

# 📈 Power BI Dashboard

The dashboard consists of four executive-level analytical views.

---

## Customer Value Pyramid

### Purpose

Visualize customer distribution across behavioral segments.

### Key Insight

Pure Genuinely Loyal Customers form the strongest foundation of sustainable revenue.

---

## Promo Dependency vs Retention Matrix

### Purpose

Compare:

- Promotion Dependency
- Customer Retention

### Key Insight

High discount dependency does not necessarily translate into long-term loyalty.

---

## Geographic Opportunity Map

### Purpose

Identify regions with:

- High Spending Power
- Low Discount Reliance

### Key Insight

Several locations exhibit strong organic demand and represent ideal expansion targets.

---

## Revenue Contribution Dashboard

### Purpose

Measure the contribution of each customer segment to overall revenue.

### Key Insight

Organic customer segments generate significantly higher-margin revenue than discount-driven segments.

---

# 📌 Key Business Insights

### Customer Loyalty

- Retention Rate: **39.21%**
- Organic loyal customers generate the most sustainable revenue.

### Promotions

- Promotions increase short-term sales.
- Heavy discounting does not create lasting loyalty.

### Product Categories

- Clothing and Accessories dominate demand.
- Accessories frequently act as customer entry products.

### Demographics

- Female customers engage more actively with promotions.
- Premium customers provide stronger ratings and satisfaction.

### Geography

- Several regions demonstrate strong purchasing power without promotional incentives.
- These locations represent high-value growth opportunities.

---

# 💡 Strategic Recommendations

## 1. Protect Organic Customers

Instead of offering discounts:

- Loyalty Rewards
- Early Access Programs
- VIP Memberships
- Exclusive Experiences

---

## 2. Improve Cross-Selling

Guide customers through a product journey:

Accessories → Clothing → Outerwear → Premium Products

---

## 3. Optimize Regional Marketing

Reallocate marketing budgets toward:

- High-spending regions
- Low promo-dependency markets

This maximizes marketing ROI.

---

# 📚 SQL Concepts Demonstrated

- CASE Statements
- Aggregations
- GROUP BY
- ORDER BY
- CTEs
- Customer Segmentation
- Business KPI Analysis
- Revenue Analytics
- Behavioral Analytics
- Data Transformation

---

# 🏆 Project Outcomes

✅ Customer Segmentation Framework

✅ Promotional Dependency Analysis

✅ Revenue Optimization Strategy

✅ Geographic Opportunity Identification

✅ Executive-Level Power BI Dashboard

✅ Actionable Business Recommendations

---

## 📁 Repository Structure

```text
Retail-Customer-Loyalty-Analytics/
│
├── SQL Queries/
│   └── customer_loyalty_analysis.sql
│
├── Power BI Dashboard/
│   └── Retail_Customer_Analytics.pbix
│
├── Reports/
│   └── summary_report.pdf
│
└── README.md
```

---

## 👩‍💻 Author

**Prachi Mittal**

Data Analytics | SQL | Power BI | Machine Learning

- LinkedIn: www.linkedin.com/in/prachi-mittal-382211280
- GitHub: https://github.com/hhustlerr

---
⭐ If you found this project useful, consider giving it a star!
