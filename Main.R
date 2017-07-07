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
#
source('Cleaner.R')
