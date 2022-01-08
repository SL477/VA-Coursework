# Merge cases by age with cases by region
# Imports
import pandas as pd

# regionalAgeBreakdowncases.csv
ageBD = pd.read_csv('data/regionalAgeBreakdowncases.csv')
# Pivot
ageBD = ageBD.pivot(index=['areaCode', 'areaName', 'areaType', 'date'], columns='age', values=['cases'])
ageBD.reset_index(inplace=True)
ageBD.reset_index(inplace=True, drop=True)
ageBD

df = pd.read_csv('regionalCaseData.csv')
df = df.merge(ageBD, on=['areaCode', 'areaName', 'areaType', 'date'], how='outer')

df.to_csv('regionalCaseData.csv')
