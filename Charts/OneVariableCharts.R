# ONE NUMERIC ONE CATEGORY
ggplot(
  data = filter(europe.merged, Year == 2016),
  aes(x= Country, y = Population))+
  geom_bar(stat = "identity")+
  ggtitle("Population by Country")

# TWO NUMERIC
BasicCharts = function()
{
  viewport = viewport(layout = grid.layout(4,1))
  pushViewport(viewport)
  dot = ggplot(
        data = europe.merged,
        aes(x = Population, stat = "Count"))+
        geom_dotplot(binwidth = 1, stackdir = "center") +
        ggtitle("Dotplot - Population")
  print(
    x = dot,
    vp =viewport(
    layout.pos.row = 1,
    layout.pos.col = 1))
  #
  box = ggplot(
        data = europe.merged,
        aes(x = Population, y = Population))+
        geom_boxplot()+
        coord_flip()+
        ggtitle("Boxplot - Population")+
        theme(axis.text.y = element_blank(), axis.ticks.y = element_blank())
  print(
    x = box,
    vp =viewport(
      layout.pos.row = 2,
      layout.pos.col = 1))
  #
  hist = ggplot(
        data = europe.merged,
        aes(x = Population))+
        geom_histogram(bindwidth = 5)+
        ggtitle("Histogram - Population")
  print(
    x = hist,
    vp =viewport(
      layout.pos.row = 3,
      layout.pos.col = 1))
  #
  dent = ggplot(
          data = europe.merged,
          aes(x = Population))+
          geom_density(bindwidth = 5)+
          ggtitle("Histogram - Population")
  print(
    x = dent,
    vp =viewport(
      layout.pos.row = 4,
      layout.pos.col = 1))
#
}