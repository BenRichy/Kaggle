# 1_Wrangle_CovidData
# This is just some test code to play with siuba and get the kaggle import working

# %% Import packages
import pandas as pd
from siuba import *
from siuba.dply.vector import *
from skimpy import clean_columns
import seaborn as sb

# %% Import Covid data
covid_data = clean_columns(pd.read_csv('data/Country-wise-COVID-cases.csv'))

# %% Siuba testing
su_test = (
    covid_data >>
    summarize(sum = _.total_infected.sum()/1000000)
)
print(su_test)


# %% plot using seaborn
sb.relplot(data=covid_data, x="total_infected", y="total_deaths")

# %%
