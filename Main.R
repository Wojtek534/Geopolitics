# Library
library(lattice)
library(tibble)
library(dplyr)
library(reshape2)
library(ggplot2)
library(readr)
library(readxl)
library(RColorBrewer)
library(hexbin)
library(grid)
library(GGally)
# Data
world.surface = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
                sheet = "Surface")
world.population = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
                   sheet = "Population")
world.gdp = read_excel("~/Pulpit/RProject/Geopolitics/WorldData.xlsx", 
            sheet = "Gdp")
# Variables
source('World.R')
# Functions
source('Functions.R')
# Prepare Data
source('PrepareData.R')
# Charts
#source('WorldPlots.R')
#source('BasicPlots.R')
# Colors
#
europe.merged = merge(europe.population.top.melt, europe.gdp.top.melt, by = c('Country', 'Year'))
europe.merged = rename(europe.merged, Population = Value.x, Gdp = Value.y)
europe.merged = select(europe.merged, Year, Country, Population, Gdp)
europe.merged = europe.merged[order((europe.merged$Year)),]
rownames(europe.merged) = NULL
#
# GGally
ggpairs(
  data = europe.merged,
  columns = c(1,3,4)
)



