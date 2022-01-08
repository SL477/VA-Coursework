# imports
import pandas as pd

files = [
    'accomedationType',
    'cars',
    'economicActivity',
    'ethnicData',
    'healthData',
    'occupationData',
    'qualifications',
    'residenceType',
]

def sortoutname(x: str) -> str:
    """make the string lowercase, spaces to _ and ditch special characters"""
    x = x.lower()
    x = x.replace(' ', '_')
    for i in [':', ';']:
        x = x.replace(i, '')
    return x

df = None
for f in files:
    tmp = pd.read_csv("censusdata\\" + f + '.csv')

    # sort out the columns
    cols = [sortoutname(x) for x in tmp.columns]
    tmp.columns = cols

    # merge the dataframes
    if df is None:
        df = tmp
    else:
        df = df.merge(tmp, how='outer')
df.to_csv('districtCensusData.csv')


