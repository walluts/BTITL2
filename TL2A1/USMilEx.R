setwd("~/Documents/GitHub/BTITL2/TL2A1/CSV's")

install.packages("ggplot2")

library(tidyverse)
library(dplyr)
library(ggplot2)

USDS <- read.csv(file="USDS.csv")
GDPS <- read.csv(file="GDPS.csv")
PCS <- read.csv(file="PCS.csv")

usdsgraph <- ggplot(USDS,aes(x=Year, y=USA)) + geom_line(colour = "red")+scale_x_continuous(breaks = seq(1949,2020,5))+ labs(x= "Time",y="Military expenditure (millions)")

usdsgraph + scale_y_continuous(breaks = seq(13503,609758.0,80000))


GDPSgraph <- ggplot(GDPS,aes(x=Year, y=USA)) + geom_line(colour = "blue")+scale_x_continuous(breaks = seq(1949,2020,5))+ labs(x= "Time",y="Gross Domestic Product")

GDPSgraph

PCSgraph <- ggplot(PCS,aes(x=Year, y=USA)) + geom_line(colour = "green")+scale_x_continuous(breaks = seq(1988,2020,5))+ labs(x= "Time",y="Per Capita Spending")

PCSgraph + scale_y_continuous(breaks = seq(995.4,2286.9,200))

