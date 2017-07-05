# Library
library(tibble)
library(dplyr)
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
source('Europe.R')
source('BasicPlots.R')
# Charts
BasicPlots(filter(europe.surface.top, Country != "Russian Federation"))
