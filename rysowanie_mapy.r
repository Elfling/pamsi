library("ggmap")
library(maptools)
library(maps)
serwery = read.table("dane_serwery.txt", TRUE, "\t")
serwery_reprezentanci = read.table("dane_rep.txt", TRUE, "\t")
mp <- NULL
mapWorld <- borders("world", colour="gray50", fill="gray50")
mp <- ggplot() + mapWorld

mp <- mp+ geom_point(aes(x=serwery$long, y=serwery$lat) ,color="blue", size=3)
mp <- mp+ geom_point(aes(x=serwery_reprezentanci$long, y=serwery_reprezentanci$lat) ,color="red", size=4)
mp
