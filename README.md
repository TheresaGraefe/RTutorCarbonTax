# RTutorCarbonTaxSweden
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
install.packages("RTutor",repos = c("https://skranz-repo.github.io/drat/",getOption("repos")))

if (!require(devtools))
  install.packages("devtools")

devtools::install_github("Theresa Graefe/RTutorCarbonTaxesAndCO2Emissions", upgrade_dependencies=FALSE)
```

## 2. Show and work on the problem set
To start the problem set first create a working directory in which files like the data sets and your solution will be stored. Then adapt and run the following code.
```s
library(RTutorCarbonTaxesAndCO2Emissions)

# Adapt your working directory to an existing folder
setwd("C:/problemsets/RTutorCarbonTaxesAndCO2Emissions")
# Adapt your user name
run.ps(user.name="Jon Doe", package="RTutorCarbonTaxesAndCO2Emissions",
       auto.save.code=TRUE, clear.user=FALSE)
```
If everything works fine, a browser window should open, in which you can start exploring the problem set.
