#
ggplot(
  data = filter(world.merged,Year == 2016),
  aes(
    x = Population,
    y = Gdp,
    color = Continent))+
  geom_point()+
  ggtitle("")
#
ggplot(
  data = filter(world.merged,Year == 2016),
  aes(
    x = Population,
    y = Gdp))+
  geom_point()+
  facet_wrap(facets = ~Continent)+
  ggtitle("")
#
ggplot(
  data = world.merged.agg,
  aes(
    x = Year,
    y = Population))+
  geom_line()+
  facet_wrap(facets = ~Continent)+
  ggtitle("")
#
ggplot(
  data = world.merged.agg,
  aes(
    x = Year,
    y = Population,
    color = Continent))+
  geom_line()+
  #facet_wrap(facets = ~Continent)+
  ggtitle("")
#
ggplot(
  data = world.merged.agg,
  aes(
    x = Year,
    y = Population,
    color = Continent))+
  geom_line()+
  facet_wrap(facets = ~Continent)+
  ggtitle("")+
  theme_light()
#
ggplot(
  data = world.merged.agg,
  aes(
    x = Year,
    y = Gdp,
    color = Continent))+
  geom_line()+
  facet_wrap(facets = ~Continent)+
  ggtitle("")+
  theme_light()
#
ggplot(
  data = world.merged.agg,
  aes(
    x = Year,
    y = Capita,
    color = Continent))+
  geom_line()+
  facet_wrap(facets = ~Continent)+
  ggtitle("")+
  theme_light()