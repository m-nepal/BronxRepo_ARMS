# setting the working directory
mainDirectory <- "C:/Users/mohan/Documents/R/BronxRepo_ARMS"
dataDirectory <- "C:/Users/mohan/Documents/R/BronxRepo_ARMS/Data"
analysisDirectory <- "C:/Users/mohan/Documents/R/BronxRepo_ARMS/Analysis"
fileName <- "rollingsales_bronx.csv"

setwd("C:/Users/mohan/Documents/R/BronxRepo_ARMS")

# creating the data and analysis directory if not exists
if (!dir.exists("Data"))
  dir.create("Data")

if(!dir.exists("Analysis"))
  dir.create("Analysis")
# now copying files to working directory data from my personal directory
to <- "C:/Users/mohan/Documents/R/BronxRepo_ARMS/Data/"
from <- "D:/MSDS/MSDS-6306(403)/unit6/rollingsales_bronx.csv"
file.copy(from,to)
# we have the raw data in data directory now.
# now go the data directory to check the data
setwd(to)
# making sure you are in data directory
getwd()
# now read the csv file 
raw_data <- read.csv(rollingsales_bronx.csv)

