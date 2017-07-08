#
library(reshape2)
#
DataTimeSeries = function(data)
{
  # Get old column names with 1990 - 2016 and remove 3 columns (Country, Code, Continent)
  year = colnames(data)
  year = year[4:length(year)]
  # Transpose
  new.data = t(data[,1:ncol(data)])
  # Set column names from first row
  colnames(new.data) = new.data[1,]
  # Delete top 3 rows with old data
  new.data = new.data[-c(1,2,3),]
  # Reset row names
  rownames(new.data) = NULL
  # Insert old columns with values 1990 - 2016
  new.data = cbind(year, new.data)
  # Return
  return(new.data)
}
#
DataMelting = function(data)
{
  # Melt data values into single column
  new.data = melt(data)
  # Reorder columns
  new.data = new.data[, c(4,3,1,2,5)]
  # Rename
  new.data = rename(new.data, Year = variable, Value = value)
  # Convert years to numeric
  new.data$Year = as.numeric(as.character(new.data$Year))
  # Return
  return(new.data)
}
#
DataMerge = function(primary, secondary, third)
{
  new.data = merge(primary, secondary, by = c('Country', 'Year'))
  #new.data = select(new.data, Year, Country, Continent, Population, Gdp)
  #new.data = new.data[order((new.data$Year)),]
  new.data = merge(new.data, third, by = 'Country')
  new.data = rename(new.data, Population = Value.x, Gdp = Value.y)
  new.data = new.data %>%mutate(Capita = round(Gdp/Population,2))
  new.data = select(new.data, Year, Country,Code, Continent, Population, Gdp, Capita, Surface, Latitude, Longitude)
  rownames(new.data) = NULL
  return(new.data)
}
#
DataAggregateMerge = function(primary, secondary)
{
  new.data = merge(primary, secondary, by = c('Continent', 'Year'))
  new.data = rename(new.data, Population = x.x, Gdp = x.y)
  new.data = new.data[order((new.data$Year)),]
  new.data = new.data[, c(2,1,3,4)]
  rownames(new.data) = NULL
  return(new.data)
}
#