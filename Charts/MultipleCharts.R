#
library(GGally)
#
GGally
ggpairs(
  data = europe.merged,
  columns = c(1,2,4,5)
)
#