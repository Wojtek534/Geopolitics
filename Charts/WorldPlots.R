#
WorldPlots = function(world.data)
{
  print(
  ggplot(
    data = world.data,
    aes(x = world.data$Country, y = world.data$Population))+
    geom_density(stat = "identity")+
    ggtitle("Population by Country")+
    xlab("Country")+
    ylab("Population(mln)")+
    theme(axis.text.x = element_blank())
  )
  #
  print(
  ggplot(
    data = world.data,
    aes(x = world.data$Country, y = world.data$Gdp))+
    geom_density(stat = "identity")+
    ggtitle("Gdp by Country")+
    xlab("Country")+
    ylab("Gdp(bln)")+
    theme(axis.text.x = element_blank())
  )
}