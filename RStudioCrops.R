#defining the location of the files involved
#'set working sirectory' - found in 'session' tab
setwd("~/Documents/GitHub/BTITL2")

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

#formatting the time to a date and a day reading
df3 <- df2 %>%
  #separates date into month and year
  separate(Date, c("Month","Year")) %>%
  #mutate means create new variable
  #year2 = new var what is does '20' infront of the year var
  mutate(Year2=paste("20", Year, sep="")) %>%
  #creates var day and every cell equals 1
  mutate(Day=1) %>%
  #create new var date, paste = concatonate with (sep) seperator '-'
  mutate(Date=paste (Year, Month, Day, sep="-")) %>%
  #select(-Month, -Year, -Day) %>% 
  mutate(Date = ymd(Date))

#checking out df3 fully
View(df3)
  