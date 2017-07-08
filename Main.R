setwd('/home/wojtus/Pulpit/RProject/Geopolitics')
# Library
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(hexbin)
library(grid)
# Load data
source('LoadData.R')
# Load setup T/F
load.series = F
load.poland = F
load.europe = T
# Functions
source('Functions.R')
# Variables
source('Variables/World.R')
source('Variables/Europe.R')
source('Variables/Poland.R')
source('Groups.R')
# Clean
source('Cleaner.R')
# Charts
source('WorldAnalyze/WorldCharts.R')
source('WorldAnalyze/EuropeCharts.R')
#
top.europe = filter(europe.merged, Country %in% top.countries)
#
line.europe.population = ggplot(
  data = top.europe,
  aes(
    x = Year,
    y = Population,
    color = Country))+
  geom_line()+
  facet_wrap(facets = ~Country)+
  ggtitle("")+
  theme_light()

line.europe.population
