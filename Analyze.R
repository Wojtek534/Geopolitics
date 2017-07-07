# Analyze
sum(europe.merged$Population)
sd(europe.merged$Population)
mean(europe.merged$Population)
median(europe.merged$Population)
#
summary(filter(europe.merged, Year == 2016))
#
cor(
  x = europe.merged$Population,
  y = europe.merged$Gdp
)

predict(
  object = model,
  newdata = data.frame()
)
plot(
  x = europe.merged$Population,
  y = europe.merged$Gdp,
  main = "Population to Gdp"
)
model = lm(formula = europe.merged$Population ~ europe.merged$Gdp,
           data = europe.merged)
lines(
  x = europe.merged$Population,
  y = europe.merged$Gdp,
  col = "red",
  lwd = 3
)