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