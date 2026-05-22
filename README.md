**E-commerce Sales Analysis (SQL Project)**


**Business objective**

Analyse e-commerce data to understand revenue drivers, customer behaviour, and growth opportunities.


**Key findings**

**1. Monthly Revenue Performance**

_Insight:_
Revenue peaks in January-February which may indicate post-holiday spending habits, while May, November, and December are the weakest performing months.

_Recommendation:_
The business should capitalise on high-performing months (January–February) through targeted campaigns and promotions, while investigating the causes of lower performance in May and late-year months to identify opportunities for improvement.


**2. Product Performance**

_Insight:_
Product revenue is highly uneven, with the Smart Watch (42) generating the highest revenue, while the Hair Dryer (26) contributes the least.

_Recommendation:_
High-performing products such as Smart Watches should be prioritised in marketing and inventory strategies, while underperforming products like Hair Dryers may require pricing, promotion, or product positioning adjustments.


**3. Category Contribution**

_Insight:_
Revenue is concentrated in a small number of categories, with Home (22.4%) and Sports (21.1%) are the top performing categories, while Electronics contributes significantly less at 12.7%.

_Recommendation:_
The business should continue to invest in high-performing categories (Home and Sports) while identifying opportunities to grow lower-performing categories such as Electronics through targeted promotions or product expansion.


**4. Customer Revenue Contribution**

_Insight:_
The top 10 customers contribute approximately 3% of total revenue, indicating that revenue is broadly distributed rather than concentrated. This suggests the business relies on a wide customer base rather than a small group of high value customers.

_Recommendation:_
Since revenue is not heavily dependent on a small group of customers, the business should focus on broad customer engagement strategies rather than relying solely on high value customers.


**5. Average Orders per Customer**

_Insight:_
Customers place an average of 3.48 orders, suggesting a moderate level of repeat purchasing behaviour.

_Recommendation:_
The business should aim to increase customer engagement and repeat purchases through loyalty programmes, personalised offers, or targeted retention strategies.


**6. Loyalty vs Non-Loyalty Revenue**

_Insight:_
Revenue is relatively balanced between non-loyalty (£847k) and loyalty customers (£797k), with non-loyalty customers contributing slightly more overall. This is an interesting finding, as loyalty programmes are typically expected to drive higher customer value, suggesting there is an opportunity to convert high-spending non-loyalty customers into members.

_Recommendation:_
The business should explore strategies to convert high-spending non-loyalty customers into loyalty members, as this could improve long-term retention and customer lifetime value.


**Overall Conclusion**

The analysis highlights that revenue is influenced by seasonal trends, product performance, and a broad customer base. While certain categories and products drive strong performance, there are clear opportunities to improve underperforming areas and strengthen customer retention. Loyalty programmes and targeted campaigns represent key levers for driving future growth.


**Approach**

- Data was analysed using SQL (RunSQL)
- Multiple tables (customers, orders, products) were joined to calculate revenue metrics
  
- Key techniques used:
  - Aggregations (SUM, COUNT)
  - Joins across relational tables
  - Window functions for percentage calculations
  - Subqueries for calculating customer-level metrics

**Files**
- queries.sql: SQL queries used for analysis
