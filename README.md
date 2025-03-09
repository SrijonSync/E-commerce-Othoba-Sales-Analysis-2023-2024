
# Pran RFL E-Commerce Data Analysis (Othoba.com)

## →Challenges in the E-Commerce Landscape

E-commerce has revolutionized the way people shop, but it also presents numerous operational challenges. Othoba.com, the e-commerce of Pran RFL, has been experiencing inefficiencies that impact its overall performance.

From high cancellation rates and delayed deliveries to uneven regional sales and profitability issues, stakeholders have been facing difficulties in optimizing the business. Vendors struggle with logistical inefficiencies, customers cancel orders due to delays, and revenue takes a hit due to inefficiencies in shipment, payments, and pricing strategies.

To address these challenges, a deep dive into the data was conducted, revealing critical inefficiencies and opportunities for optimization. This analysis provides data-driven insights to enhance operations, improve profitability, and refine customer experience.

### Data Source
🔴Confidential e-commerce database containing order details, customer transactions, delivery records, and profitability metrics.
## →The Approach: A Data-Driven Solution

To tackle these challenges, a structured data analysis plan was implemented:

1. **Data Cleaning and Preparation** – Ensuring the dataset is accurate and reliable for analysis.
2. **Exploratory Data Analysis (EDA)** – Identifying trends, inefficiencies, and problem areas.
3. **Visualizing Key Insights** – Using graphs and heatmaps to highlight sales trends, cancellations, and vendor performance.
4. **Providing Actionable Recommendations** – Developing strategies to reduce cancellations, improve logistics, and enhance profitability.

## →Data Cleaning and Preprocessing

Before analysis, several data cleaning steps were performed:

- **Handling Missing Values:**
  - `Order Cancel Reason` missing values were replaced with 'Successful Order'.
  - Dropped columns `Product Attribute`, `OrderShippingExclTax`, and `Supplier` due to excessive missing values.
- **Data Type Conversion:**
  - Converted `Order CreatedOn`, `ShippedDate`, and `DeliveredDate` to datetime format.
- **Data Filtering:**
  - Filtered the dataset for relevant time frames.
- **Replacing Erroneous Values:**
  - Replaced `'#REF!'` values in `B2C/B2B` column with 'Corporate'.

## →Exploratory Data Analysis (EDA)
### 1. Yearly Order Trends (2023 vs 2024)

- There is a **noticeable decline in total orders in 2024** compared to 2023.
- The number of successful orders decreased while cancellations increased, **indicating growing inefficiencies**.

### 2. Monthly Order Trends

- Sales **peak in certain months** while dropping significantly in others.
- The lowest-performing months align with possible seasonal fluctuations.

### 3. Category-wise Order Performance

- **Top-selling categories include household and consumer goods**, while others like specialized industrial equipment perform poorly.
- Low-performing categories **contribute minimally to revenue yet consume logistical resources**.

### 4. Division-wise Order Distribution

- **Certain divisions dominate order volume**, contributing to the majority of total sales.
- Some divisions **face high cancellation rates due to logistical inefficiencies**.

### 5. State-wise Order Distribution

- **Certain states contribute significantly** to the overall order count.
- High-performing states show lower cancellation rates, **indicating better infrastructure**.

### 6. Sales and Cancellations by Division

- **A heatmap visualization revealed divisions with the highest cancellations**.
- Some divisions consistently face **cancellations due to vendor delays and shipping issues**.

### 7. Shipment Method Analysis

- **12 major shipment methods** were identified, with some having significantly higher failure rates.
- Late deliveries **are strongly correlated with cancellations** in certain shipment methods.

### 8. Delivery Performance Analysis

- **On-time deliveries are below the expected threshold**, leading to customer dissatisfaction.
- Certain vendors **repeatedly contribute to delayed shipments**, increasing cancellation risks.

### 9. Order Cancellations Breakdown

- **Shipping delays account for the largest percentage of cancellations**.
- Other major reasons include **out-of-stock issues, payment failures, and order modifications**.

### 10. Payment Method Preference

- **Digital payments are increasingly preferred**, yet COD remains dominant.
- Payment failures **often result in order cancellations**.

### 11. COD vs Online Payment Comparison

- **COD orders experience cancellation rates nearly double those of online payments**.
- Encouraging online transactions **could reduce cancellations and improve cash flow**.

### 12. Revenue Analysis by Year

- **Revenue dropped in 2024**, correlating with decreased successful order rates.
- Increased cancellations **directly impacted overall sales and profitability**.

### 13. B2B vs B2C Sales Contribution

- **B2B transactions generate higher revenue per order than B2C**.
- Corporate sales exhibit more stability, **suggesting a need for targeted B2B strategies**.

### 14. Vendor Performance

- **A small group of vendors contribute to the majority of successful sales**.
- **Some vendors consistently fail to meet delivery expectations**, negatively impacting customer experience.

### 15. Profitability by Category

- **Some high-sales categories have lower profit margins due to high operational costs**.
- Adjusting pricing strategies **could improve profit margins** in low-performing categories.

### 16. Loss-Making Vendors

- **Certain vendors operate at a loss due to excessive return rates and delivery failures**.
- Vendor performance benchmarks **must be established to reduce financial losses**.

### 17. Impact of Shipping Delays on Cancellations

- **Shipping delays have a direct impact on order cancellations**.
- **Longer transit times significantly increase the likelihood of order abandonment**.

### 18. Order Distribution by Delivery Duration

- **Faster delivery services experience lower cancellation rates**.
- Customers expect **delivery times of 3-5 days**, but many orders exceed this timeframe.

### 19. Customer Retention Analysis

- **Repeat purchase rates are lower than expected**, suggesting retention issues.
- Regions with high churn rates **align with poor delivery service areas**.

### 20. Seasonal Discounts Impact on Sales

- Discounts **boost short-term sales** but do not significantly improve long-term retention.
- Over-reliance on discounts **may erode profit margins**.

### 21. Sales Trends Based on Order Source

- **Mobile orders are increasing**, indicating a shift in consumer behavior.
- Desktop users tend to **place higher-value orders**.

### 22. High-Risk Orders Analysis

- **Some orders show a higher likelihood of cancellation** based on historical trends.
- High-risk factors include **COD, long delivery times, and low-value orders**.

### 23. Customer Complaint Trends

- **Delivery delays and payment issues dominate customer complaints**.
- **Negative order experiences correlate with lower repeat purchase rates**.

## →Stakeholder Challenges Identified

- **High order cancellations due to shipping delays**.
- **Certain vendors causing major delivery delays**.
- **COD orders facing significantly higher cancellation rates**.
- **Low profitability in some product categories**.
- **Uneven sales distribution across divisions and states**.
- **Significant drop in total sales in 2024 compared to 2023**.

## →Recommendations

- **Optimize logistics to reduce delivery delays**.
- **Encourage online payments to minimize cancellations**.
- **Establish vendor performance benchmarks**.
- **Enhance customer communication on delivery timelines**.
- **Adjust pricing strategies for low-profit categories**.
- **Improve targeted marketing for high-risk regions**.


This analysis provides deep insights into Othoba.com's operational inefficiencies, profitability gaps, and customer behavior. By implementing the recommendations, stakeholders can enhance efficiency, boost sales, and improve the overall customer experience.

## Authors

[@SrijonSync](https://github.com/SrijonSync)

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/srijon-das/)

## Feedback

If you have any feedback, please reach out at srijonsheon.19@gmail.com

## Related

Other Problem Statements:

[E-commerce SQL Analysis README](https://github.com/SrijonSync/E-commerce-Sales-Analysis-2023-2024--SQL-/blob/main/README.md)


