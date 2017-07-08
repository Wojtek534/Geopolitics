#
if (load.series == T)
{
  world.population.series = DataTimeSeries(world.population)
  #
  world.gdp.series = DataTimeSeries(world.gdp)
}
#
world.population.melt = DataMelting(world.population)
#
world.gdp.melt = DataMelting(world.gdp)
#
world.merged = DataMerge(world.population.melt, world.gdp.melt, world.base)
#
world.merged.agg = DataAggregateMerge(
                  aggregate(world.merged$Population,
                  by=list(Year = world.merged$Year, Continent = world.merged$Continent),
                  FUN = sum),
                  aggregate(world.merged$Gdp,
                  by=list(Year = world.merged$Year, Continent = world.merged$Continent),
                  FUN = sum))
world.merged.agg = world.merged.agg %>%mutate(Capita = round(Gdp/Population,2))
#
#world = filter(world.merged, Year == 2016)
#