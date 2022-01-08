# Imports
import pandas as pd

# estAgeDataRegion
regAgeData = pd.read_csv('data/estAgeDataRegion.csv')
regAgeData = regAgeData[regAgeData['category'] == 'AGE_SEX_5YEAR']
regAgeData.drop('category', inplace=True, axis=1)
regAgeData = regAgeData.pivot(index=['areaCode', 'gender'],columns='age',values='population')
regAgeData.reset_index(inplace=True)
# Remove male and female split
regAgeData = regAgeData[regAgeData['gender'] == 'ALL']
regAgeData.drop('gender', axis=1, inplace=True)


# censusData.csv
censusData = pd.read_csv("data/censusData.csv")
# rename columns to something sensible
# code from https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.rename.html
censusData.rename(columns={
    'F8': 'SharedDwelling',
    'F12': 'UnsharedDwelling',
    'F991': 'NoCarOrVan',
    'F992': '1CarOrVan',
    'F993': '2CarOrVan',
    'F994': '3CarOrVan',
    'F995': '4MoreCarOrVan',
    'F997': 'HouseHoldNotDeprived',
    'F998': 'HouseHoldDeprive1Dim',
    'F999': 'HouseHoldDeprive2Dim',
    'F1000': 'HouseHoldDeprive3Dim',
    'F1001': 'HouseHoldDeprive4Dim',
    'F1915': 'TotalLongTermHealth',
    'F1916': 'LongTermHealthLimitedALot',
    'F1917': 'LongTermHealthLimitedALittle',
    'F1918': 'LongTermHealthNotLimited',
}, inplace=True)
# Drop weird extra column
censusData.drop('Unnamed: 21', axis=1, inplace=True)
# Drop explanation row
censusData.drop(0, axis=0, inplace=True)


# Merge census data with regAgeData
df = regAgeData.merge(censusData, left_on='areaCode', right_on='GEO_CODE')

df.to_csv("regionalCensusData.csv")
