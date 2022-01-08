library("tidyverse")

# Regional new cases
regionalNewCases <- read_csv("data/regionalnewcases.csv");

# Regional deaths
regionalDeaths <- read_csv("data/regionaldeathbydeathdate.csv");

# Vaccinated
regionVaccinated <- read_csv("data/regionalvaccinated.csv");

# joined data
regdata <- regionalNewCases %>%
  full_join(regionalDeaths, by = c("areaCode", "date", "areaType", "areaName"), suffix = c("newcase", "death")) %>%
  full_join(regionVaccinated, by = c("areaCode", "date", "areaType", "areaName"), suffix = c("newcase", "vaxx"))
regdata
write_csv(regdata, "regionalCaseData.csv")