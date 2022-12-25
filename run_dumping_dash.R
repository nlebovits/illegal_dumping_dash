# Loading libraries [install the libraries before if not already installed]
library(knitr)
library(rmarkdown)
library(rsconnect)

#https://rpubs.com/arafath/automateR
#https://www.ericeikrem.com/publishing-rpubs-command-line/
#https://rdrr.io/github/rstudio/rsconnect/man/rpubsUpload.html
  

# Knits rmd file (.Rmd is saved in the working directory)
knit('C:/Users/Nissim/Documents/Building Permits for Dante/west_phl_building_permits/illegal_dumping_dash/dashboard_script.Rmd')

# Creates the html output
rmarkdown::render("dashboard_script.Rmd")

rpubsUpload(title = "Philadelphia Illegal Dumping Dashboard", 
            contentFile = "dashboard_script.html",
            originalDoc = "dashboard_script.Rmd",
            id = "https://api.rpubs.com/api/v1/document/987075/53a026836c2d4a5a8717a2cb1a45429f")


# C:\Program Files\R\R-4.2.1\bin\x64

# C:\Users\Nissim\Documents\Building Permits for Dante\west_phl_building_permits\illegal_dumping_dash\run_dumping_dash.R