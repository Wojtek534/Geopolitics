# Prepare Data
# Europe
#
europe.surface = filter(world.surface, Continent == 'Europe')
europe.population = filter(world.population, Continent == 'Europe')
europe.gdp = filter(world.gdp, Continent == 'Europe')
#
europe.surface.top = europe.surface
europe.population.top = europe.population[order(-(europe.population$`2016`)),]
europe.population.top = europe.population.top[1:10,]
europe.gdp.top = europe.gdp[order(-(europe.gdp$`2016`)),]
europe.gdp.top = europe.gdp.top[1:15,]
#
europe.population.summary = summary(europe.population$'2016')
europe.population.summary
#
# Poland
poland.surface = world.surface[which(world.surface$Country == "Poland"),]
poland.gdp = world.gdp[which(world.gdp$Country == "Poland"),]
poland.population = world.population[which(world.population$Country == "Poland"),]
#
# Merge
#world.merge.2016 = merge(select(world.population, Country, Code, Continent, '2016'), select(world.gdp, Country, '2016'), by = 'Country')
#world.merge.2016 = rename(world.merge.2016, Population=`2016.x`, Gdp = `2016.y`)
#world.merge.2016 = world.merge.2016 %>%mutate(Capita = round(Gdp/Population,2))
# World
world.population.series = DataTimeSeries(world.population)
world.population.series = DataTimeSeries(world.gdp)
world.population.melt = DataMelting(world.population)
world.gdp.melt = DataMelting(world.gdp)
# Europe
europe.population.series = DataTimeSeries(europe.population)
europe.gdp.series = DataTimeSeries(europe.gdp)
europe.population.melt = DataMelting(europe.population)
europe.population.top.melt = DataMelting(europe.population.top)
europe.gdp.melt = DataMelting(europe.gdp)
europe.gdp.top.melt = DataMelting(europe.gdp.top)
#