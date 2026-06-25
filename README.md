# Banking Customer Analytics Platform

An end-to-end data engineering project that ingests raw banking transaction data into Snowflake, transforms and models data using dbt, and delivers customer analytics dashboards through Power BI.

The project focuses on customer financial behavior, credit risk indicators, spending patterns, and demographic segmentation.

Raw CSV Files
      │
      ▼
 Snowflake (RAW)
      │
      ▼
 dbt Staging Models
      │
      ▼
 Star Schema Warehouse
      │
      ▼
  dbt Mart Models
      │
      ▼
 Power BI Dashboard
 
 ## Dataset

This project uses banking data stored in the `raw-data/` folder. The dataset contains card information, transaction data , merchant categories, cusomter informations and mcc codes.
## Data Warehouse Design

The warehouse follows a **Star Schema** design to support analytical reporting and business intelligence workloads.

### Fact Table
The warehouse follows a **Star Schema** design consisting of one fact table and five dimension tables:

- **FactTransaction**
- **DimCustomer**
- **DimCard**
- **DimMerchant**
- **DimMCC**
- **DimDate**
    
## Power BI Dashboard

### Customer Analysis
![Dashboard Overview](images/dashboard_overview.png)


![Customer Analysis](images/pages2.jpg)
