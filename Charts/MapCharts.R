#
#map <- map_data("world")
#
library(maps)
# Clean
ggplot()+
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  ggtitle("World map")+
  xlab("")+
  ylab("")+
  theme(
    panel.background = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )
#
ggplot(
  data = world)+
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
  geom_density2d(
    aes(
      x = Longitude,
      y = Latitude))+
  # Titles
  ggtitle("World map")+
  xlab("")+
  ylab("")+
  # Theme
  theme(
    panel.background = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )
#
ggplot(
  data = world)+
  # Base map
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  # Zoom
  # coord_cartesian(
  #   xlim = c(-20, 60),
  #   ylim = c(35, 70))+
  # Display type
  geom_polygon(
    aes(
      x = Longitude,
      y = Latitute,
      group = Group,
      fill = Population),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = '#4c0000')+
  # Titles
  ggtitle("Population map (2016)")+
  xlab("")+
  ylab("")+
  labs(color = 'Population')+
  # Theme
  theme(
    panel.background = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )
#
ggplot(
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
      y = Latitute,
      group = Group,
      fill = Population),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = 'red')+
  # Titles
  ggtitle("World map")+
  xlab("")+
  ylab("")+
  labs(color = 'Population')+
  # Theme
  theme(
    panel.background = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )
#
library(mapproj)
#
ggplot(
  data = filter(world, Continent %in% c('Europe', 'Asia', 'Africa')))+
  # Base map
  borders(
    database = 'world',
    colour = 'grey60',
    fill = 'grey60')+
  # Zoom
  # coord_cartesian(
  #    xlim = c(-20, 60),
  #    ylim = c(35, 70))+
  coord_map(
    projection = 'ortho',
    orientation = c(52,21,0))+
  # Display type
  geom_polygon(
    aes(
      x = Longitude,
      y = Latitute,
      group = Group,
      fill = Gdp),
    color = "grey60")+
  scale_fill_gradient(
    low = 'white',
    high = '#B20000')+
  # Titles
  ggtitle("World map")+
  xlab("")+
  ylab("")+
  labs(color = 'Population')+
  # Theme
  theme(
    panel.background = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )