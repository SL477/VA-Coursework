# VA - Coursework

## Get Data
UK wide data:
https://coronavirus.data.gov.uk/api/v1/data?filters=areaType=overview&structure=%7B%22areaType%22:%22areaType%22,%22areaName%22:%22areaName%22,%22areaCode%22:%22areaCode%22,%22date%22:%22date%22,%22newCasesByPublishDate%22:%22newCasesByPublishDate%22,%22cumCasesByPublishDate%22:%22cumCasesByPublishDate%22%7D&format=csv

UK wide detailed:
https://api.coronavirus.data.gov.uk/v2/data?areaType=overview&metric=hospitalCases&metric=newCasesByPublishDate&metric=newDeaths28DaysByDeathDate&metric=newPeopleVaccinatedFirstDoseByPublishDate&metric=newPeopleVaccinatedSecondDoseByPublishDate&format=csv

Regional new cases:
https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newCasesByPublishDate&format=csv

Regional death by death date:
https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newDeaths28DaysByDeathDate&format=csv

Regional vaccine data:
https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newPeopleVaccinatedFirstDoseByVaccinationDate&metric=newPeopleVaccinatedSecondDoseByVaccinationDate&format=csv

Age Data:
https://coronavirus.data.gov.uk/downloads/supplements/ONS-population_2021-08-05.csv

Regional Age cases:
https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newCasesBySpecimenDateAgeDemographics&format=csv

Census data:
http://infuse.ukdataservice.ac.uk/

Boundary data:
https://borders.ukdataservice.ac.uk/bookmark.html?userDirectory=4B45B36ED59AAD5CB5164069417636838%2F16406941768837787608915425172196&service=BOUNDARIES

## Transform data
1. Use mergeData.R to combine the three detailed CSVs into one CSV
2. Run mergeCensusAgeInfo.py to combine the two census CSVs into one CSV

## Jupyter-lab issue
If you have an issue with Anaconda not allowing jupyter-lab to open in pipenv use https://stackoverflow.com/questions/58507444/how-to-add-sqlite3-to-pipenv-environment
