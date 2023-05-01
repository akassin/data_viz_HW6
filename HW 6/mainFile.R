library(readr)
library(dplyr)
library(ggrepel)
library(leaflet)
library(leaflet.extras)
library(ggplot2)
library(scales)
library(MASS)
library(pls)
library(WOCR)
library(pracma)
library(car)
library(DT)
library(KernSmooth)
library(raster)
library(rgdal)
library(ggforce)


options(scipen=999)  # turn off scientific notation like 1e+06

df <- read.csv("serialdat.csv", header = TRUE, sep=",", na.strings = "")
dim(df)
summary(df)
glimpse(df)

ggplot(df, aes(y=Replicate2, x=Replicate1, fill=TenPowerxcopies)) + 
  geom_bar(width=0.7, position=position_dodge(width=0.8), stat="identity") +
  scale_x_continuous(n.breaks = 15) +
  scale_y_continuous(n.breaks = 15)


ggplot(df, aes(y=Replicate2, x=Replicate1, color=TenPowerxcopies,
               shape = TenPowerxcopies)) + 
  geom_point(size = 4) +
  scale_x_continuous(n.breaks = 15) +
  scale_y_continuous(n.breaks = 15) 

ggplot(df, aes(y=Replicate2, x=Replicate1, color=TenPowerxcopies,
               shape = TenPowerxcopies)) + 
  geom_mark_ellipse(aes(color = TenPowerxcopies))+
  geom_point(size = 4) +
  scale_x_continuous(n.breaks = 15) +
  scale_y_continuous(n.breaks = 15) 

ggplot(df, aes(y=Replicate2, x=Replicate1, color=TenPowerxcopies,
               shape = TenPowerxcopies)) + 
  geom_mark_ellipse(aes(fill = TenPowerxcopies), expand = unit(2,"mm"))+
  geom_point(size = 4) +
  scale_x_continuous(n.breaks = 15) +
  scale_y_continuous(n.breaks = 15) 
