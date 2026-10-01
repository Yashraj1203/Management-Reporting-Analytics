# FP&A Executive Portfolio Model

> **Enterprise Management Reporting, Driver-Based Budgeting & Variance
> Attribution Model**

A FP&A portfolio project demonstrating how a finance
analyst can connect **raw operating data → budgeting assumptions →
management reporting → variance attribution → KPI architecture →
executive decision support → audit controls** in one integrated Excel
model.

## Executive Summary

It is an end-to-end **Financial Planning & Analysis (FP&A)**
management reporting model built around a 24-month planning horizon and
three business units: **Consumer, Enterprise, and Digital**.

The model combines: - Driver-based budgeting and scenario controls -
Monthly Actual vs Budget vs Forecast reporting - Revenue and EBIT
variance analysis - P&L bridge / variance-driver attribution - Segment
profitability analysis - Strategic KPI / value-driver architecture -
Executive dashboarding and management commentary - Automated model
integrity and reconciliation checks - Python and SQL companion workflows
for repeatable analytics

The workbook is explicitly structured as a **portfolio / synthetic
management model**, rather than a representation of a real company's
financials.

## Key Portfolio Metrics

  Metric                        Portfolio Result
  --------------------------- ------------------
  Reporting horizon                    24 months
  Business units                               3
  Raw segment-month records                   72
  Consolidated Revenue                ₹27,609.7m
  Budget Revenue                      ₹28,238.3m
  Revenue Variance              ₹-628.6m (-2.2%)
  Consolidated EBIT                    ₹8,248.3m
  Budget EBIT                          ₹8,625.9m
  EBIT Variance                 ₹-377.6m (-4.4%)
  Consolidated EBIT Margin                 29.9%

> Figures above are derived from  `Data_Raw` sheet 

## What This Project Demonstrates

### 1. FP&A Reporting

The model creates a consolidated monthly performance statement with: -
Actual Revenue - Budget Revenue - Revenue variance in absolute and
percentage terms - Actual EBIT - Budget EBIT - EBIT variance in absolute
and percentage terms - EBIT margin - Automated variance flags

The reporting engine uses multi-condition `SUMIFS` formulas against the
normalized fact table.

### 2. Driver-Based Planning & Scenario Analysis

The **Assumptions** sheet provides an interactive scenario switch: -
Downside Case - Base Budget - Upside Case

Planning levers include: - Segment gross-margin targets - Headcount
expansion - Salary inflation - Marketing as a percentage of revenue -
Technology as a percentage of revenue - Capex as a percentage of revenue

The active scenario is selected through a single control and propagated
into the model.

### 3. Management Variance Bridge

The **Driver_Analysis** sheet bridges budget EBIT toward reconciled
actual EBIT through identifiable operating drivers: - Revenue volume /
demand - Gross margin / COGS - Payroll and compensation - Marketing
spend - Technology / cloud efficiencies - Facilities and G&A

Each driver is paired with a management narrative to demonstrate the
transition from **variance reporting to decision support**.

### 4. Executive Dashboard

The **Dashboard** consolidates: - Total Revenue - Operating EBIT - EBIT
Margin - Opex Ratio - Business-unit performance - Revenue and EBIT
variances - Segment margin contribution - Management commentary -
Monthly revenue trend - EBIT margin trajectory

### 5. KPI / Value Driver Architecture

The **KPI_Tree** links operating metrics to shareholder-value concepts
through a hierarchical framework:

**ROIC → EBIT Margin / Capital Efficiency → Commercial, Supply Chain,
Workforce, Marketing and Technology drivers**

This demonstrates the ability to move beyond descriptive reporting into
**driver-based management analysis**.

### 6. Audit & Model Governance

The **Checks** sheet contains automated controls for: - Dashboard
revenue tie-out - Dashboard EBIT tie-out - P&L bridge reconciliation -
Raw-data completeness - Master audit status

The model uses explicit tolerances and formula-driven PASS / FLAGGED
outputs.

## Workbook Architecture

  Sheet               Purpose
  ------------------- ---------------------------------------------------
  `Cover`             Executive pitch, model metadata and navigation
  `Data_Raw`          72-record normalized fact table feeding the model
  `Assumptions`       Scenario selector and planning levers
  `Monthly_Report`    24-month Actual vs Budget performance statement
  `Driver_Analysis`   P&L bridge and variance attribution
  `Dashboard`         Executive KPI scorecard and management reporting
  `KPI_Tree`          Strategic KPI / value-driver framework
  `Checks`            Automated integrity and reconciliation controls

## Data & Analytics Layer

The project also includes supporting Python and SQL components.

### Python

The variance-analysis workflow calculates: - Revenue variance - EBIT
variance - EBIT margin - Status-level Actual / Forecast aggregation

``` python
df["Revenue_Variance"] = df["Revenue"] - df["BudgetRevenue"]
df["EBIT_Variance"] = df["EBIT"] - df["BudgetEBIT"]
df["EBIT_Margin"] = df["EBIT"] / df["Revenue"]
```

### SQL

The SQL layer demonstrates reusable management-reporting patterns for: -
Monthly revenue variance - Segment profitability - EBIT margin -
Negative variance identification

Core techniques include: - `SUM` - `GROUP BY` - `ORDER BY` - `NULLIF` -
Variance calculations - Conditional filtering

## Business Acumen

This model is designed to answer questions such as:

1.  Are we above or below revenue plan?
2.  Where is the EBIT gap coming from?
3.  Which business units are driving the variance?
4.  How much of the gap is attributable to demand, margin or
    controllable costs?
5.  What does the current run-rate imply for the forecast?
6.  Which operational KPIs should management monitor?
7.  Can the reported numbers be reconciled back to source data?
8.  What management actions logically follow from the observed variance?

## Technical Stack

**Excel / FP&A** - Microsoft Excel - Advanced formulas - `SUMIFS` -
`INDEX` - `CHOOSE` - `IF` - Dynamic scenario controls - KPI dashboards -
Management reporting - Reconciliation controls

**Python** - Python - Pandas - OpenPyXL - Automated workbook
generation - Variance analytics

**SQL** - SQL - Aggregation - Segment analysis - Variance reporting -
Exception identification

## Model Design Principles

-   **Single source of truth:** normalized `Data_Raw` table
-   **Dynamic aggregation:** reporting tabs pull from source data rather
    than manually typed totals
-   **Separation of inputs and outputs:** assumptions are isolated from
    reporting
-   **Traceability:** variance outputs can be followed into driver
    analysis
-   **Auditability:** explicit reconciliation checks
-   **Executive usability:** dashboard-first presentation and management
    commentary
-   **Recruiter readability:** clear sheet architecture and
    business-oriented terminology

## Suggested Portfolio Walkthrough

For an interview or portfolio review, use this sequence:

**01 → Cover**\
Explain the business objective and model architecture.

**02 → Dashboard**\
Start with the executive KPI view and headline performance.

**03 → Monthly Report**\
Show how the model compares Actual vs Budget and identifies exceptions.

**04 → Driver Analysis**\
Explain how the P&L gap is decomposed into actionable drivers.

**05 → Assumptions**\
Demonstrate scenario switching and planning levers.

**06 → KPI Tree**\
Connect operating metrics to profitability and capital efficiency.

**07 → Checks**\
Demonstrate model governance and reconciliation discipline.

## Portfolio Positioning

This project is particularly relevant for: - FP&A Analyst - Financial
Analyst - Business Finance Analyst - Management Reporting Analyst -
Commercial Finance Analyst - Strategic Finance Analyst - Business / Data
Analyst roles with finance exposure

It demonstrates a combination of **financial modeling, management
reporting, analytics, business partnering and data-driven decision
support** rather than only spreadsheet mechanics.

------------------------------------------------------------------------

### Built as an FP&A / Strategic Finance portfolio project

**Focus:** Financial Planning & Analysis • Management Reporting •
Variance Analysis • Driver-Based Budgeting • KPI Architecture • Decision
Support

---

## Disclaimer

This is a **portfolio / synthetic FP&A model** created for demonstration
and professional development. The financial figures, operating
assumptions and management narratives should not be interpreted as
financial information belonging to a real company.

---

## 📄 License

Released under the [MIT License](LICENSE).

---

*Developed by [Yashraj1203](https://github.com/Yashraj1203) — synthetic data, for educational and portfolio purposes only.*
