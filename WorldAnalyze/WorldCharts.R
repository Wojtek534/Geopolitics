library(maps)
library(mapproj)
#
# Population
map.world.population = ggplot(
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
                  y = Latitude,
                  group = Group,
                  fill = Population),
                color = "grey60")+
              scale_fill_gradient(
                low = 'white',
                high = '#990000')+
              # Titles
              ggtitle("Population map (2016)")+
              xlab("")+
              ylab("")+
              labs(color = 'Population')+
              theme_linedraw()
              # Theme
              # theme(
              #   panel.background = element_blank(),
              #   #plot.title = element_text(hjust = 0.6),
              #   axis.title.x = element_blank(),
              #   axis.text.x = element_blank(),
              #   axis.ticks.x = element_blank(),
              #   axis.title.y = element_blank(),
              #   axis.text.y = element_blank(),
              #   axis.ticks.y = element_blank()
              # )
###########################################
# GDP
map.world.gdp = ggplot(
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
map.world.capita  = ggplot(
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
              y = Latitude,
              group = Group,
              fill = Capita),
            color = "grey60")+
          scale_fill_gradient(
            low = 'white',
            high = '#e14f10')+
          # Titles
          ggtitle("Per Capita map (2016)")+
          xlab("")+
          ylab("")+
          labs(color = 'Capita')+
          theme_linedraw()
###########################################
line.world.population =  ggplot(
                        data = world.merged.agg,
                        aes(
                          x = Year,
                          y = Population,
                          color = Continent))+
                        geom_line()+
                        facet_wrap(facets = ~Continent)+
                        ggtitle("Population in mln")+
                        theme_light()
#
line.world.gdp = ggplot(
                  data = world.merged.agg,
                  aes(
                    x = Year,
                    y = Gdp,
                    color = Continent))+
                  geom_line()+
                  facet_wrap(facets = ~Continent)+
                  ggtitle("GDP in bln $")+
                  theme_light()
#
line.world.capita = ggplot(
                    data = world.merged.agg,
                    aes(
                      x = Year,
                      y = Capita,
                      color = Continent))+
                    geom_line()+
                    facet_wrap(facets = ~Continent)+
                    ggtitle("GDP per capita k$")+
                    theme_light()
#