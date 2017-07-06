# Library
library(tibble)
library(dplyr)
library(reshape2)
library(ggplot2)
library(readr)
library(readxl)
# Data
world.surface = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
                sheet = "Surface")
world.population = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
                   sheet = "Population")
world.gdp = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
            sheet = "Gdp")
# Variables
source('World.R')
source('Europe.R')
source('Poland.R')
# Functions
source('Functions.R')
# Charts
#source('WorldPlots.R')
#source('BasicPlots.R')
# Merge
world.merge.2016 = merge(select(world.population, Country, Code, Continent, '2016'), select(world.gdp, Country, '2016'), by = 'Country')
world.merge.2016 = rename(world.merge.2016, Population=`2016.x`, Gdp = `2016.y`)
world.merge.2016 = world.merge.2016 %>%mutate(Capita = round(Gdp/Population,2))
# Charts
#BasicPlots(filter(europe.surface.top, Country != "Russian Federation"))
#WorldPlots(world.merge.2016)
# Prepare Data
europe.series = DataTimeSeries(europe.population)
europe.population.melt = DataMelting(europe.population.top)
europe.gdp.melt = DataMelting(europe.gdp.top)
europe.gdp.melt = select(europe.gdp.melt, Year, Country, Value)
europe.gdp.melt = filter(europe.gdp.melt, Year >= 2010)
#
ggplot(
  data = europe.gdp.melt,
  aes(x = Year, y = Value))+
  geom_line()+
  facet_grid(facets = .~Country)+
  ggtitle("Population by year")+
  xlab("")+
  ylab("")
  
