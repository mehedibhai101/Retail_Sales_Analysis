# 📊 Project Background: The Cafe Story Strategic Growth Analysis

**The Cafe Story** is a premium coffee chain with a footprint in major US metropolitan hubs: **New York, Chicago, Los Angeles, and Seattle**. The brand had successfully established a "Third Place" presence in these cities, but rapid expansion led to a "Profitability Paradox." While top-line revenue was growing, net profit margins were stagnating, and store-level performance was wildly inconsistent.

**The mission was to stop "Blind Expansion."** Management was planning to open 10 new locations but lacked the data to know *where* or *what* format to build. I was brought in to conduct a **Strategic Sales Audit** of their transaction data (spanning 2021-2023). My goal was to decode the DNA of their most profitable stores and identify why certain high-traffic locations were bleeding margin.

Insights and recommendations are provided on the following key areas:

* **Regional Dominance** (The East Coast vs. West Coast Divide)
* ** Product Strategy** (The "Caffeine Hook" vs. "Sugar Margin")
* **Store Efficiency** (Traffic density vs. Ticket size)
* **Temporal Behavior** (Weekend "Treat" culture)

https://github.com/user-attachments/assets/b5e7b6e6-ba27-400d-bbdd-a87f85b29755

[The analytical calculations were performed using Microsoft Excel's Power Pivot and Pivot Table features.]

---

# 🏗️ Data Structure & Investigative Scope

The analysis was performed on a dataset of **retail coffee transactions**, granularly tracking sales from the SKU level up to regional performance.

* **`Transaction Metrics`:** `Revenue`, `Profit`, `Qty Sold`, and `Unit Price`.
* **`Geographic Hierarchy`:** Mapped across **4 Cities** (NY, Chicago, LA, Seattle) and specific `Branches` (e.g., "Venice Beach", "Central Park").
* **`Product Intelligence`:** Categorized into `Coffee Beverages`, `Tea Beverages`, `Specialty Drinks`, `Snacks`, `Cold Drinks`, and `Sandwiches`.
* **`Temporal Dimensions`:** Tracking performance by `Year`, `Month`, and `Weekday` to identify peak consumption windows.

---

# 📋 Executive Summary

### Overview of Findings

The Cafe Story is heavily dependent on **Coffee Beverages** for volume, but the real profit drivers are hidden in the **Snacks and Specialty Drinks** categories. The analysis revealed a massive performance skew: **Chicago and New York** are the revenue engines, while locations in **Seattle** are underperforming relative to the market size, likely due to saturation. Crucially, the data exposed that "Weekends" drive a disproportionate amount of high-margin "treat" purchases compared to the functional "caffeine-only" weekday rush.

<img width="941" height="534" alt="Image" src="https://github.com/user-attachments/assets/7796ae65-2e9f-4844-ac67-0c2faa0c29bc" />

---

# 🔍 Strategic Insights

### 🌍 Regional & Store Operations

* **The Windy City Powerhouse:** **Chicago** emerged as a top-tier performer. Stores like "Loop Latte Lounge" and "Magnificent Mile Cafe" are seeing high volumes, suggesting the brand has achieved "Local Hero" status there.
* **The Seattle Saturation:** Despite being a coffee capital, the **Pike Place** branch shows signs of stagnation. The fierce local competition suggests The Cafe Story should pivot strategy there from "Expansion" to "Retention."
* **New York Volume:** The **Central Park** location drives immense volume, likely due to tourist footfall, but operational efficiency (speed of service) is critical here to maintain the high transaction count.

### ☕ Product & Category Analysis

* **The "Anchor" Product:** **Coffee Beverages** remain the highest volume category, acting as the "Anchor" that brings customers in.
* **The Margin Multipliers:** While Coffee brings them in, **Snacks and Specialty Drinks** deliver higher profit margins per unit. A significant portion of transactions in high-profit stores include a "pairing" (Drink + Snack).
* **Underutilized Menu:** **Tea Beverages** lag significantly behind coffee, indicating either a weak product offering or a missed opportunity to market to non-coffee drinkers.

### 📈 Temporal Trends

* **The Weekend Shift:** Sales data indicates a shift in behavior on **Saturdays and Sundays**. Average Order Value (AOV) tends to rise as customers switch from "functional" morning coffees to "social" brunch-style orders (more food, specialty drinks).
* **Weekday Routine:** Weekday sales are consistent but rely heavily on single-item coffee transactions.

<img width="1081" height="411" alt="Image" src="https://github.com/user-attachments/assets/54d794d7-6f63-48e0-af6d-dae0aeea18bf" />

---

# 🚀 Strategic Recommendations

* **Chicago Expansion:** Double down on the **Chicago market**. The data supports opening 2 new locations in suburban or transit-heavy areas to capture the existing brand momentum.
* **"Pairing" Protocol:** Launch a **"Morning Bundle" (Coffee + Snack)** promotion specifically targeting the weekday morning rush to increase AOV during high-traffic but low-ticket hours.
* **Seattle Revamp:** Halt expansion in Seattle. Instead, reinvest capital into a **store refresh** or a localized marketing campaign to differentiate from competitors in the Pike Place area.
* **Weekend "Treat" Menu:** Introduce limited-time "Weekend Exclusive" specialty drinks to capitalize on the higher propensity to spend on Saturdays and Sundays.

---

## ⚠️ Assumptions and Caveats

* **Date Formatting:** The raw data contained Excel serial date formats (e.g., 44591), which were converted to standard Date objects to perform seasonality analysis.
* **Profit Calculation:** The `Profit` column is taken as absolute truth from the source system; no cost-of-goods-sold (COGS) breakdown was available to verify these margins independently.
* **Branch granularity:** The dataset lists generic shop names ("Coffee House", "Espresso") alongside specific locations. It is assumed these generic names belong to the branch specified in the `Branch` column.

---

## 📂 Repository Structure

```
Retail_Sales_Analysis/
│
├── sales_data.csv                        # The primary raw data source containing transaction history
├── data_cleaning.m                       # M-script for cleaning and transforming raw sales records
├── assets/                               # Visual elements used in reports (logos, icons, etc.)
│   ├── Icons/                            # Collection of icons used in KPI Cards/Buttons
│   └── Theme.pdf                         # Collection of hex color codes used in dashboard
│
├── LICENSE                               # Legal terms for code and data usage
└── README.md                             # Project background, summary and key insights
``` 

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute it with proper attribution.

---

## 🌟 About Me

Hi! I’m **Mehedi Hasan**, well known as **Mehedi Bhai**, a Certified Data Analyst with strong proficiency in *Excel*, *Power BI*, and *SQL*. I specialize in data visualization, transforming raw data into clear, meaningful insights that help businesses make impactful data-driven decisions.

Let’s connect:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge\&logo=linkedin\&logoColor=white)](https://www.linkedin.com/in/mehedi-hasan-b3370130a/)
[![YouTube](https://img.shields.io/badge/YouTube-red?style=for-the-badge\&logo=youtube\&logoColor=white)](https://youtube.com/@mehedibro101?si=huk7eZ05dOwHTs1-)
