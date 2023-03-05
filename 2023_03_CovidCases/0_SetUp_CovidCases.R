#0_SetUp_CovidCases

source("SetUp_Functions.R")

import_Kaggle(KAGGLE_CREDENTIALS, "sunayanagawde/countrywise-covid-cases", "2023_03_CovidCases/")

data = readr::read_csv("2023_03_CovidCases/Country-wise-COVID-cases.csv")
View(data)

readr::write_csv(datasets::iris, "iris.csv")
