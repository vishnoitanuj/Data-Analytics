# Verify the package is installed.
any(grepl("xlsx",installed.packages()))

install.packages('rJava')
install.packages("xlsx")
#--------------------------------------------------------------------------------------------
#Loading data present in Microsoft excel file
#--------------------------------------------------------------------------------------------

#USE THE REAL TIME DATA IN FILE NAMED: "Stipend_2017.xlsx" AND PLACE IT IN C DRIVE TO TEST FURTHER
library(xlsx)
mydata <- read.xlsx("/home/vishnoitanuj/Desktop/DataAnalytics/Stipend_2017.xlsx", 1, header=TRUE)

#--------------------------------------------------------------------------------------------
#Loading selected rows in R / selected data of interest only 
#--------------------------------------------------------------------------------------------

library(xlsx)
mydata <- read.xlsx("/home/vishnoitanuj/Desktop/DataAnalytics/Stipend_2017.xlsx", 1, 
                    sheetName="stipend", rowIndex=NULL, startRow=101,
                    endRow=110, header=FALSE)
mydata()
