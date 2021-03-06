#
library(readr)
library(readxl)
# Data
world.base = read_excel("~/Pulpit/RProject/Geopolitics/Data/WorldData.xlsx", 
                           sheet = "Surface")
world.population = read_excel("~/Pulpit/RProject/Geopolitics/Data/WorldData.xlsx", 
                              sheet = "Population")
world.gdp = read_excel("~/Pulpit/RProject/Geopolitics/Data/WorldData.xlsx", 
                       sheet = "Gdp")

world = read_excel("~/Pulpit/RProject/Geopolitics/Data/WorldData.xlsx", 
        sheet = "DataExtended")
world = filter(world, Continent %in% c('Europe', 'Asia', 'Africa', 'South America', 'North America', 'Australia and Oceania'))
world$Longitude = as.numeric(as.character(world$Longitude))
world$Latitute = as.numeric(as.character(world$Latitude))
world$Surface = as.numeric(as.character(world$Surface))
world$Gdp = as.numeric(as.character(world$Gdp))
world$Population = as.numeric(as.character(world$Population))
world$Capita = as.numeric(as.character(world$Capita))
#
world$Gdp = round(world$Gdp/1000000000,2)
world$Population = round(world$Population/1000000,2)
world$Capita = round(world$Capita,2)
#
#world$Gdp = world$Gdp/1000000000

#
#
#
#
#
#
# To k km2
world.base$Surface = world.base$Surface/1000

# To bln $
world.gdp$`1990` = round(world.gdp$`1990`/1000000000, 2)
world.gdp$`1991` = round(world.gdp$`1991`/1000000000, 2)
world.gdp$`1992` = round(world.gdp$`1992`/1000000000, 2)
world.gdp$`1993` = round(world.gdp$`1993`/1000000000, 2)
world.gdp$`1994` = round(world.gdp$`1994`/1000000000, 2)
world.gdp$`1995` = round(world.gdp$`1995`/1000000000, 2)
world.gdp$`1996` = round(world.gdp$`1996`/1000000000, 2)
world.gdp$`1997` = round(world.gdp$`1997`/1000000000, 2)
world.gdp$`1998` = round(world.gdp$`1998`/1000000000, 2)
world.gdp$`1999` = round(world.gdp$`1999`/1000000000, 2)
world.gdp$`2000` = round(world.gdp$`2000`/1000000000, 2)
world.gdp$`2001` = round(world.gdp$`2001`/1000000000, 2)
world.gdp$`2002` = round(world.gdp$`2002`/1000000000, 2)
world.gdp$`2003` = round(world.gdp$`2003`/1000000000, 2)
world.gdp$`2004` = round(world.gdp$`2004`/1000000000, 2)
world.gdp$`2005` = round(world.gdp$`2005`/1000000000, 2)
world.gdp$`2006` = round(world.gdp$`2006`/1000000000, 2)
world.gdp$`2007` = round(world.gdp$`2007`/1000000000, 2)
world.gdp$`2008` = round(world.gdp$`2008`/1000000000, 2)
world.gdp$`2009` = round(world.gdp$`2009`/1000000000, 2)
world.gdp$`2010` = round(world.gdp$`2010`/1000000000, 2)
world.gdp$`2011` = round(world.gdp$`2011`/1000000000, 2)
world.gdp$`2012` = round(world.gdp$`2012`/1000000000, 2)
world.gdp$`2013` = round(world.gdp$`2013`/1000000000, 2)
world.gdp$`2014` = round(world.gdp$`2014`/1000000000, 2)
world.gdp$`2015` = round(world.gdp$`2015`/1000000000, 2)
world.gdp$`2016` = round(world.gdp$`2016`/1000000000, 2)
# To Mln population
world.population$`1990` = round(world.population$`1990`/1000000, 2)
world.population$`1991` = round(world.population$`1991`/1000000, 2)
world.population$`1992` = round(world.population$`1992`/1000000, 2)
world.population$`1993` = round(world.population$`1993`/1000000, 2)
world.population$`1994` = round(world.population$`1994`/1000000, 2)
world.population$`1995` = round(world.population$`1995`/1000000, 2)
world.population$`1996` = round(world.population$`1996`/1000000, 2)
world.population$`1997` = round(world.population$`1997`/1000000, 2)
world.population$`1998` = round(world.population$`1998`/1000000, 2)
world.population$`1999` = round(world.population$`1999`/1000000, 2)
world.population$`2000` = round(world.population$`2000`/1000000, 2)
world.population$`2001` = round(world.population$`2001`/1000000, 2)
world.population$`2002` = round(world.population$`2002`/1000000, 2)
world.population$`2003` = round(world.population$`2003`/1000000, 2)
world.population$`2004` = round(world.population$`2004`/1000000, 2)
world.population$`2005` = round(world.population$`2005`/1000000, 2)
world.population$`2006` = round(world.population$`2006`/1000000, 2)
world.population$`2007` = round(world.population$`2007`/1000000, 2)
world.population$`2008` = round(world.population$`2008`/1000000, 2)
world.population$`2009` = round(world.population$`2009`/1000000, 2)
world.population$`2010` = round(world.population$`2010`/1000000, 2)
world.population$`2011` = round(world.population$`2011`/1000000, 2)
world.population$`2012` = round(world.population$`2012`/1000000, 2)
world.population$`2013` = round(world.population$`2013`/1000000, 2)
world.population$`2014` = round(world.population$`2014`/1000000, 2)
world.population$`2015` = round(world.population$`2015`/1000000, 2)
world.population$`2016` = round(world.population$`2016`/1000000, 2)