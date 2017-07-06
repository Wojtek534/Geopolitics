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