#defining the location of the files involved
#'set working sirectory' - found in 'session' tab
setwd("~/Desktop/Crops")

install.packages("tidyverse")

library(tidyverse)
library(lubridate)


#making df1 a tibble of crop_exmaple1.csv
df1 <- read_csv("Crop_example1.csv")

#making df2 a long file version of df1
df2 <- df1 %>% 
  gather("Date","Value",c(-Crop,-Type))

#displays the a full prview of the itbble in brackets
View(df2)

