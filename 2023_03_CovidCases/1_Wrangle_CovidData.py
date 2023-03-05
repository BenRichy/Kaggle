#%% Import packages
import pandas as pd
from siuba import *
from siuba.dply.vector import *
from skimpy import clean_columns

# %% Import Covid data
covid_data = clean_columns(pd.read_csv('2023_03_CovidCases/Country-wise-COVID-cases.csv'))

print(covid_data)

# %% Siuba testing
su_test = (
    covid_data >>
    select(_.country_name)
)
print(su_test)

# %%
