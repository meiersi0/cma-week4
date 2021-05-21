library(readr)        # to import tabular data (e.g. csv)
library(dplyr)        # to manipulate (tabular) data
library(ggplot2)      # to visualize data
library(sf)           # to handle spatial vector data
library(terra)        # To handle raster data
library(lubridate)    # To handle dates and times

wildschwein_BE <- read_delim("wildschwein_BE_2056.txt",",") # adjust path
wildschwein_BE <- st_as_sf(wildschwein_BE, coords = c("E", "N"), crs = 2056, remove = FALSE)

#sqrt((x-lead(x,1))^2+(y-lead(y,1))^2) --> euclidean distance

testfun <- function(){}
testfun()
class(testfun)

testfun <- function(){print("this function does nothing")}
testfun()

testfun <- function(sometext){print(sometext)}
testfun(sometext = "this function does slightly more, but still not much")

my_age <- function(birthday, units){
  difftime(Sys.time(),birthday, units = units)
}
my_age(birthday = "1989-12-13", units = "days")
my_age("1989-12-12", "days")

my_age <- function(birthday, units = "days"){
  difftime(Sys.time(),birthday, units = units)
}
my_age("1997-04-23")
my_age("1997-04-23", "hours")

#Task1
#Write your own functions

eucl_dist <- function(wildschwein_BE, units){
  mutate(dist =sqrt((N-lead(N,1))^2+(E-lead(E,1))^2))
}

eucl_dist(wildschwein_BE)






