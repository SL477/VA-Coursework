# VA - Coursework
## Get Data
| Description | URL |
| :---: | --- |
| UK wide data | https://coronavirus.data.gov.uk/api/v1/data?filters=areaType=overview&structure=%7B%22areaType%22:%22areaType%22,%22areaName%22:%22areaName%22,%22areaCode%22:%22areaCode%22,%22date%22:%22date%22,%22newCasesByPublishDate%22:%22newCasesByPublishDate%22,%22cumCasesByPublishDate%22:%22cumCasesByPublishDate%22%7D&format=csv |
| UK wide detailed | https://api.coronavirus.data.gov.uk/v2/data?areaType=overview&metric=hospitalCases&metric=newCasesByPublishDate&metric=newDeaths28DaysByDeathDate&metric=newPeopleVaccinatedFirstDoseByPublishDate&metric=newPeopleVaccinatedSecondDoseByPublishDate&format=csv |
| Regional new cases | https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newCasesByPublishDate&format=csv |
| Regional death by death date | https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newDeaths28DaysByDeathDate&format=csv |
| Regional vaccine data | https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newPeopleVaccinatedFirstDoseByVaccinationDate&metric=newPeopleVaccinatedSecondDoseByVaccinationDate&format=csv |
| Age Data | https://coronavirus.data.gov.uk/downloads/supplements/ONS-population_2021-08-05.csv |
| Regional Age cases | https://api.coronavirus.data.gov.uk/v2/data?areaType=region&metric=newCasesBySpecimenDateAgeDemographics&format=csv |
| Census data | http://infuse.ukdataservice.ac.uk/ |
| Boundary data | https://borders.ukdataservice.ac.uk/bookmark.html?userDirectory=4B45B36ED59AAD5CB5164069417636838%2F16406941768837787608915425172196&service=BOUNDARIES |
| Upper tier covid data | https://api.coronavirus.data.gov.uk/v2/data?areaType=utla&metric=newCasesByPublishDate&metric=newDeaths28DaysByDeathDate&metric=newPeopleVaccinatedFirstDoseByVaccinationDate&metric=newPeopleVaccinatedSecondDoseByVaccinationDate&format=csv |
| UTLA ages | https://api.coronavirus.data.gov.uk/v2/data?areaType=utla&metric=newCasesBySpecimenDateAgeDemographics&format=csv |
| LTLA covid data | https://api.coronavirus.data.gov.uk/v2/data?areaType=ltla&metric=newCasesByPublishDate&metric=newDeaths28DaysByDeathDate&metric=newPeopleVaccinatedFirstDoseByVaccinationDate&metric=newPeopleVaccinatedSecondDoseByVaccinationDate&format=csv |
| LTLA age data | https://api.coronavirus.data.gov.uk/v2/data?areaType=ltla&metric=newCasesBySpecimenDateAgeDemographics&format=csv |
| Census data (district/unitary) | https://www.nomisweb.co.uk/sources/census_2011_qs |

## Conda environment
As we are using Geopandas we are using Anaconda to manage the environment. To create it from the environment file use:

```bash
conda env create -f environment.yml python=3.8
conda activate vacw
```

To get the environment.yml file use [conda env docs](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html):

```bash
conda env export > environment.yml
```

To get the requirements.txt file for PIP use (source [StackOverflow answer](https://stackoverflow.com/questions/62885911/pip-freeze-creates-some-weird-path-instead-of-the-package-version)):

```bash
pip list --format=freeze > requirements.txt
```

## Monthly Heat maps
| Monthly Cases | Monthly Death Rate | Monthly 1st Vaccine | Monthly 2nd Vaccine |
| --- | --- | --- | --- |
| ![Monthly Cases](/img/monthlycases.gif) | ![Monthly Death Rate](/img/monthlyDeathRate.gif) | ![Monthly 1st vaccine dose](/img/monthly1stVaccineDose.gif) | ![Monthly 2nd vaccine dose](/img/monthly2ndVaccineDose.gif) |
