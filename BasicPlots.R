#
library(grid)
#
BasicPlots = function(base)
{
  #
  viewport = viewport(layout = grid.layout(3,1))
  pushViewport(viewport)
  #
  dot = ggplot(
    data = base,
    aes(x = base$Surface, ..count..)) +
    geom_dotplot(binwidth = 1, stackdir = "center") +
    scale_x_continuous(limits = c(0, max(base$Surface)))+
    ggtitle("Dotplot") +
    theme(plot.title = element_text(hjust = 5)) +
    xlab("Surface (k km2)")
  #
  print(
    x = dot,
    vp =viewport(
      layout.pos.row = 1,
      layout.pos.col = 1))
  #
  dens = ggplot(
    data = base,
    aes(x = base$Surface)) +
    geom_density()+
    scale_x_continuous(limits = c(0, max(base$Surface)))+
    ggtitle("Density") +
    theme(plot.title = element_text(hjust = 5))+
    xlab("Surface (k km2)")
  #
  print(
    x = dens,
    vp =viewport(
      layout.pos.row = 2,
      layout.pos.col = 1))
  #
  base.top = base[order(-(base$Surface)),][1:10,]
  #
  mdots = ggplot(
    data = base.top,
    aes(
      x = base.top$Surface,
      y = base.top$Country
    ))+
    geom_point(fill = "skyblue")+
    scale_x_continuous(limits = c(0, max(base$Surface)))+
    ggtitle("Points top 10") +
    theme(plot.title = element_text(hjust = 0.5))+
    xlab("Surface (k km2)") +
    ylab("Country")
  #
  print(
    x = mdots,
    vp =viewport(
      layout.pos.row = 3,
      layout.pos.col = 1))
  #
  #axis.text.x = element_blank()
  ggplot(
    data = world.merge.2016,
    aes(x = Country, y = Population))+
    geom_point()+
    ggtitle("Population by Country")+
    xlab("Country")+
    ylab("Population(mln)")+
    theme(axis.text.x = element_blank())
  #
  ggplot(
    data = world.merge.2016,
    aes(x = Country, y = Gdp))+
    geom_density(stat = "identity")+
    ggtitle("Population by Country")+
    xlab("Country")+
    ylab("Population(mln)")+
    theme(axis.text.x = element_blank())
}