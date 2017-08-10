library(maps)
library(mapproj)
#
# Population
map.europe.population = ggplot(
  data = europe)+
  # Base map
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  # Zoom
  coord_cartesian(
    xlim = c(-20, 60),
    ylim = c(35, 70))+
  # Display type
  geom_polygon(
    aes(
      x = Longitude,
      y = Latitude,
      group = Group,
      fill = Population),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = '#e14f10')+
  # Titles
  ggtitle("Population map (2016)")+
  xlab("")+
  ylab("")+
  labs(color = 'Population')+
  theme_linedraw()
###########################################
# GDP
map.europe.gdp = ggplot(
  data = europe)+
  # Base map
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  # Zoom
  coord_cartesian(
    xlim = c(-20, 60),
    ylim = c(35, 70))+
  # Display type
  geom_polygon(
    aes(
      x = Longitude,
      y = Latitude,
      group = Group,
      fill = Gdp),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = '#293385')+
  # Titles
  ggtitle("Gdp map (2016)")+
  xlab("")+
  ylab("")+
  labs(color = 'Gdp')+
  theme_linedraw()
###########################################
# Capita
map.europe.capita  = ggplot(
  data = europe)+
  # Base map
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  # Zoom
  coord_cartesian(
    xlim = c(-20, 60),
    ylim = c(35, 70))+
  # Display type
  geom_polygon(
    aes(
      x = Longitude,
      y = Latitude,
      group = Group,
      fill = Capita),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = '#FEFF10')+
  # Titles
  ggtitle("Per Capita map (2016)")+
  xlab("")+
  ylab("")+
  labs(color = 'Capita')+
  theme_linedraw()
###########################################
