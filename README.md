# 🏗️ Modern Data Warehouse using SQL Server

## 📌 Project Overview

This project demonstrates the design and implementation of a **Modern Data Warehouse** using **Microsoft SQL Server**. The objective is to integrate data from multiple business systems into a centralized analytical repository that supports reporting, business intelligence, and data-driven decision-making.

The project follows a **Bronze → Silver → Gold** architecture to organize data ingestion, cleansing, transformation, and analytics.

---

# 🎯 Project Objectives

- Build a scalable Data Warehouse using SQL Server.
- Import data from multiple source systems (ERP & CRM).
- Clean and standardize raw data.
- Integrate multiple datasets into a single analytical model.
- Design a Star Schema for reporting.
- Generate SQL-based business insights.
- Document the complete ETL process and architecture.

---

# 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| SQL Server Express | Database |
| SQL Server Management Studio (SSMS) | Database Management |
| Draw.io | Architecture & Data Modeling |
| CSV Files | Source Data |
| Git & GitHub | Version Control |
| SQL | Data Cleaning, Transformation & Analytics |

---

# 📂 Data Sources

The project integrates data from two business systems:

- ERP (Enterprise Resource Planning)
- CRM (Customer Relationship Management)

Both datasets are provided in CSV format.

---

# 🏛️ Data Warehouse Architecture

The solution follows the Medallion Architecture.

```
ERP CSV
          \
           \
            ---> Bronze Layer
           /
CRM CSV   /

        │
        ▼

   Data Cleaning
   Missing Values
   Duplicate Removal
   Standardization

        │
        ▼

      Silver Layer

        │
        ▼

Business Rules
Dimension Tables
Fact Tables

        │
        ▼

       Gold Layer

        │
        ▼

Analytics
Reporting
Dashboards
```

---

# 🔄 ETL Workflow

### Bronze Layer
- Import CSV files
- Load raw data
- Preserve original source data

### Silver Layer
- Remove duplicates
- Handle missing values
- Standardize formats
- Clean inconsistent data
- Validate data quality

### Gold Layer
- Build Dimension Tables
- Build Fact Tables
- Create Star Schema
- Prepare analytical datasets

---

# ⭐ Data Model

The warehouse follows a **Star Schema**.

### Dimension Tables

- DimCustomer
- DimProduct
- DimDate
- DimSalesperson
- DimLocation

### Fact Table

- FactSales

---

# 📊 Business Analytics

The project generates SQL-based insights for:

## Customer Analytics

- Top Customers
- Customer Segmentation
- Customer Purchase Trends
- Revenue by Customer

## Product Analytics

- Top Selling Products
- Product Performance
- Product Revenue
- Product Category Analysis

## Sales Analytics

- Monthly Sales Trend
- Yearly Sales Trend
- Sales by Region
- Sales by Product
- Sales by Customer

---

# 📈 Data Quality Checks

The following validations were performed:

- Missing Value Detection
- Duplicate Detection
- Data Type Validation
- Null Value Handling
- Data Standardization
- Referential Integrity Validation

---

# 📁 Repository Structure

```
data-warehouse-project/
│
├── datasets/
│
├── docs/
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── naming-conventions.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│
├── tests/
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

# 🚀 Project Workflow

```
CSV Files

↓

Bronze Layer

↓

Data Cleaning

↓

Silver Layer

↓

Business Transformations

↓

Gold Layer

↓

Star Schema

↓

Analytics

↓

Reporting
```

---

# 📚 Documentation

The project includes:

- Data Architecture Diagram
- ETL Flow Diagram
- Star Schema Model
- Data Dictionary
- Naming Conventions
- SQL Scripts
- Test Scripts

---

# 📊 SQL Concepts Used

- Joins
- CTE
- Window Functions
- Aggregate Functions
- CASE Statements
- Subqueries
- Common Table Expressions
- Views
- Stored Procedures
- Indexes
- Constraints

---

# 📌 Business Outcomes

The Data Warehouse enables organizations to:

- Improve reporting performance
- Consolidate multiple data sources
- Increase data quality
- Support business intelligence
- Enable faster decision-making

---

# 📷 Project Screenshots

- Data Warehouse Architecture
- ETL Flow
- Star Schema
- SQL Scripts
- SSMS Screenshots

---

# 👨‍💻 Author

**Peraka Parvathi**

Data Analyst | SQL | Power BI | Python |


