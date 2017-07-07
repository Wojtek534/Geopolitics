if (load.europe == T)
{
#
# europe.surface = filter(world.base, Continent == 'Europe')
# europe.surface.top = europe.surface
#
# europe.population = filter(world.population, Continent == 'Europe')
# europe.population.top = europe.population[order(-(europe.population$`2016`)),]
# europe.population.top = europe.population.top[1:10,]
# europe.population.series = DataTimeSeries(europe.population)
# europe.population.melt = DataMelting(europe.population)
# europe.population.top.melt = DataMelting(europe.population.top)
# #
# europe.gdp = filter(world.gdp, Continent == 'Europe')
# europe.gdp.top = europe.gdp[order(-(europe.gdp$`2016`)),]
# europe.gdp.top = europe.gdp.top[1:15,]
# europe.gdp.series = DataTimeSeries(europe.gdp)
# europe.gdp.melt = DataMelting(europe.gdp)
# europe.gdp.top.melt = DataMelting(europe.gdp.top)
#
europe.merged = filter(world.merged, Continent == 'Europe')
europe.merged.agg = filter(world.merged.agg, Continent == 'Europe')
#
}