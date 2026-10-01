import pandas as pd
df = pd.read_csv("../Data/FP&A_Monthly_Analytics_Professional.csv", parse_dates=["Month"])
df["Revenue_Variance"] = df["Revenue"] - df["BudgetRevenue"]
df["EBIT_Variance"] = df["EBIT"] - df["BudgetEBIT"]
df["EBIT_Margin"] = df["EBIT"] / df["Revenue"]
print(df.groupby("Status")[["Revenue","BudgetRevenue","EBIT","BudgetEBIT"]].sum().round(2))
