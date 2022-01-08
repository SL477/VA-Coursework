# imports
import pandas as pd

df = pd.read_csv('data/ltla_ageData.csv')
# lose the rubbish columns
df = df[['areaCode', 'areaName', 'areaType', 'date', 'age', 'cases']]
# pivot the columns
df = df.pivot(index=['areaCode', 'areaName', 'areaType', 'date'], columns='age', values='cases')
# write to csv
df.to_csv('districtCaseAgeData.csv')


