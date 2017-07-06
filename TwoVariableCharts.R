#
ggplot(
  data = europe.merged,
  aes(x = Population, y = Gdp))+
  geom_point()+
  geom_smooth(method="lm")
ggtitle("Point - Population to Gdp")+
  xlab("Population (mln")+
  ylab("Gdp (bln $")
#
ggplot(
  data = europe.merged,
  aes(x = Population, y = Gdp))+
  stat_bin2d()+
  ggtitle("Heatmap - Population to Gdp")+
  xlab("Population (mln")+
  ylab("Gdp (bln $")
#
ggplot(
  data = europe.merged,
  aes(x = Population, y = Gdp))+
  stat_binhex()+
  ggtitle("Hex - Population to Gdp")+
  xlab("Population (mln")+
  ylab("Gdp (bln $")
#
ggplot(
  data = europe.merged,
  aes(x = Population, y = Gdp))+
  geom_density2d()+
  #stat_density2d(aes(fill = ..level..), geom='polygon')+
  ggtitle("Density - Population to Gdp")+
  xlab("Population (mln")+
  ylab("Gdp (bln $")
#