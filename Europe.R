#
europe.surface = filter(world.surface, Continent == 'Europe')
europe.population = filter(world.population, Continent == 'Europe')
europe.gdp = filter(world.gdp, Continent == 'Europe')
#
europe.surface.top = europe.surface
europe.top = europe.population[order(-(europe.population$`2016`)),]
europe.top = europe.top[1:10,]
#
europe.population.summary = summary(europe.population$'2016')
europe.population.summary
#