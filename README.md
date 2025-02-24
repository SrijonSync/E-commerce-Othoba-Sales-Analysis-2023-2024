# E-commerce-Othoba-Sales-Analysis-2023-2024


## About Othoba.com

Othoba.com is one of the leading e-commerce platforms in Bangladesh, providing a wide range of products across multiple categories, including electronics, fashion, home appliances, and more. The company aims to offer a seamless online shopping experience with reliable delivery services and secure payment options.

## Overview

This repository contains an in-depth analysis of Othoba.com's e-commerce data from 2023 to 2024. The dataset includes over 930,318 entries, covering various aspects such as order statuses, payment methods, shipping details, profitability, and customer behavior. The goal of this project is to uncover key insights that can optimize business operations and improve customer satisfaction.

## Dataset Description

The dataset consists of 41 columns, detailing information related to:

Order Processing: Order status, payment status, cancellation reasons, and order updates.

Shipping & Delivery: Shipping method, shipping divisions, and delivery performance.

Customer & Product Information: Customer demographics, product categories, and vendor performance.

Financial Metrics: Total sales, unit costs, commission, and profit margins.

After initial exploration, some columns with excessive null values (e.g., AttributeItemCode, Product Attribute, OrderShippingExclTax) were dropped to streamline the analysis.

## Key Findings

1. Order Trends and Performance

## Total Orders & Cancellations:

In 2023, there were 452,178 total orders, with 58,320 cancellations (12.9% cancellation rate).

In 2024, orders increased to 478,140, but cancellations also rose to 64,512 (13.5% cancellation rate).

## Category-Wise Performance:

The top-performing category was Electronics, contributing BDT 320M in revenue.

The worst-performing category was Pharmacy, generating only BDT 562K.

## Sales by Salespersons:

The top-performing salesperson generated BDT 12.3M in sales.

The lowest-performing salesperson contributed BDT 890K, indicating a need for targeted sales improvement.

2. Shipping and Delivery Insights

Top 10 Shipping Divisions by Order Count:

Dhaka Division accounted for 38% of total orders (354,020 orders).

Chattogram Division followed with 22% (204,670 orders).

The lowest-performing shipping division was Rangpur, contributing only 2% (18,600 orders).

## Delivery Timeliness:

85% of orders were delivered on time, but 140,000 orders faced delays.

Sylhet Division had the highest delay rate of 19%.

## Shipment Methods:

Daily Shopping was the most used shipment method (46% of all orders).

Vision Emporium was the least used, handling only 2% of shipments.

3. Revenue & Profitability Analysis

## Annual Profit Comparison:

2023 Profit: BDT 150M

2024 Profit: BDT 163M (an 8.7% increase)

## B2B vs. B2C Performance:

B2B Transactions: Accounted for BDT 95M in profit (58% of total profit).

B2C Transactions: Generated BDT 68M (42% of total profit).

Top Performing Categories:

Electronics: BDT 320M revenue

Home Appliances: BDT 215M revenue

Fashion & Apparel: BDT 180M revenue

## Worst Performing Categories:

Pharmacy: BDT 562K revenue

Books, Stationery & Crafts: BDT 6.5M revenue

4. Customer Behavior & Payment Preferences

## Preferred Payment Methods:

Mobile Banking was the most used payment method (47% of orders).

Credit/Debit Cards were used in only 12% of transactions.

## Order Cancellations:

Stock unavailability was the leading reason for cancellation (45% of cases).

Incorrect customer information caused 18% of cancellations.

# Strategic Recommendations

Based on the findings, the following actionable steps are recommended:

Optimize Inventory for High-Demand Categories

Increase stock for Electronics and Home Appliances to prevent stockouts.

Discontinue or promote Pharmacy and Books & Stationery categories with targeted discounts.

Improve Logistics & Delivery Efficiency

Reduce 19% delay rate in Sylhet Division by streamlining logistics.

Strengthen partnerships with top-performing shipment providers such as Daily Shopping.

Enhance Customer Experience & Retention

Introduce loyalty programs to increase customer retention.

Optimize the checkout process by promoting mobile banking, the most preferred payment method.

Boost Sales Team Performance

Reward top-performing salespersons (e.g., BDT 12.3M+ sales contributors).

Provide training for underperforming sales regions like Rangpur.

Refine Marketing Strategies

Allocate more ad budget to high-revenue categories such as Electronics and Fashion.

Introduce targeted promotions for low-selling products.

## Bangladesh E-Commerce Landscape

Bangladesh's e-commerce industry has seen remarkable growth over the past decade, driven by increasing internet penetration, mobile banking adoption, and changing consumer behaviors. As competition intensifies, businesses must leverage data-driven strategies to optimize operations, enhance customer satisfaction, and sustain long-term growth.

# Conclusion

This analysis provides data-driven strategies to enhance Othoba.com’s sales, customer satisfaction, and operational efficiency. By implementing these recommendations, the company can optimize its e-commerce operations and drive sustainable growth.

# Tech Stack: Python (Pandas, Matplotlib, Seaborn), Data Cleaning, Visualization, EDA
