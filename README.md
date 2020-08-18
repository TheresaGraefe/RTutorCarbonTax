# RTutorCarbonTaxesandCO2Emissions
R Tutor Problem Set about Swedish carbon tax and CO2 emissions
This package constitutes an interactive R problem set 
based on theRTutor package (https://github.com/skranz/RTutor).

The problem set "Swedish Carbon tax and CO2 emissions"
takes the user on a journey through the economic paper 
"Carbon Taxes and CO2 Emissions: Sweden as a case study"
by Julius J. Andersson (2019. The economic findings along 
with the according analytic steps, as well as explanations
of the economic theory behind it and useful R commands in
this context are covered in an interactive way.
The original paper can be found on 
https://www.aeaweb.org/articles?id=10.1257/pol.20170144


## 1. Installation

RTutor and this package is hosted on Github. To install everything, run the following code in your R console.
```s
if (!require(devtools))
  install.packages("devtools")
source_gist("gist.github.com/skranz/fad6062e5462c9d0efe4")
install.rtutor(update.github=TRUE)

devtools::install_github("TheresaGraefe/RTutorCarbonTaxesAndCO2Emissions")
```

## 2. Show and work on the problem set
To start the problem set first create a working directory in which files like the data sets and your solution will be stored. Then adapt and run the following code.
```s
library(RTutorCarbonTaxesAndCO2Emissions)

# Adapt your working directory to an existing folder
setwd("C:/problemsets/RTutorCarbonTaxes")
# Adapt your user name
run.ps(user.name="Jon Doe", package="RTutorCarbonTaxesAndCO2Emissions",
       load.sav=TRUE, sample.solution=FALSE)
```
If everything works fine, a browser window should open, in which you can start exploring the problem set.
