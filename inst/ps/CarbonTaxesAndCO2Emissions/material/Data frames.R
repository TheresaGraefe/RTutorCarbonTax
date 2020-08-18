# rename variables and change format of descriptive_data.dta file

library(foreign)
dat=read.dta("descriptive_data.dta")
head(dat)
dat = dat%>%
  rename(VAT = Real_VAT)%>%
  rename(en_tax = Real_Energytax)%>%
  rename(CO2_tax = Real_Carbontax)%>%
  rename(pw_real = Real_Gasoline_Price)%>%
  rename(total_tax = Real_total_tax)%>%
  rename(GDP_synth = GDP_Synthetic_Sweden)%>%
  rename(gap_CO2 = gap_CO2_emissions_transp)

saveRDS(dat, file = "descr_Sweden.Rds")
data.copy = readRDS(file = "descr_Sweden.Rds")

# merge tax_incidence_data.dta and disentangling_regression_data.dta

library(readstata13)
library(dplyr)

tax = read.dta13("tax_incidence_data.dta")
reg = read.dta13("disentangling_regression_data.dta")
reg_dat = left_join(tax, reg, by = "year")
head(reg_dat)
reg_dat=reg_dat %>%
  rename(p_nom = retail_price)%>%
  rename(en_tax = energytax)%>%
  rename(CO2_tax = carbontax)%>%
  rename(oil_p = oilprice_SEK)%>%
  rename(en_CO2_tax = energycarbon_tax)%>%
  rename(gdp_cap = real_gdp_cap_1000)%>%
  rename(unempl = unemploymentrate)%>%
  rename(real_en_tax_vat = real_energytax_with_vat)%>%
  rename(real_CO2_tax_vat =real_carbontax_with_vat)%>%
  rename(p_real_vat = real_carbontaxexclusive_with_vat)%>%
  rename(p_real=real_carbontaxexclusive)%>%
  rename(oil_p_real = real_oil_price_sek)%>%
  rename(d_CO2_tax = d_carbontax)
  reg_dat$rctewvat = NULL
  reg_dat$country = NULL
head(reg_dat)
saveRDS(reg_dat, file = "regression_data.Rds")
data.copy = readRDS(file = "regression_data.Rds")

#data frame GDP_data.RDS from excel file
library(readxl)
dat = read_excel("GDP.xlsx")
saveRDS(dat, file = "GDP_data.Rds")
data.copy = readRDS(file = "GDP_data.Rds")


