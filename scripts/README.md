# Scripts
## Transform data
1. Use mergeData.R to combine the three detailed CSVs into one CSV
2. Run mergeCensusAgeInfo.py to combine the two census CSVs into one CSV
3. Run py mergeRegionsCases.py to combine the two regional datasets into one CSV
4. Run py mergeCensusLA.py to combine the various census datasets into one CSV file
5. Run py pivotLTLAcaseAgeData.py to flip the ltla_ageData.csv file so that it is more readable by Python and Tableau

## Jupyter-lab issue
If you have an issue with Anaconda not allowing jupyter-lab to open in pipenv use https://stackoverflow.com/questions/58507444/how-to-add-sqlite3-to-pipenv-environment