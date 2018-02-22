Beers <- read.csv("Beers.csv", header = TRUE, sep = ",", encoding='UTF-8')
Breweries <- read.csv("Breweries.csv", header = TRUE, sep = ",", encoding='UTF-8')
http://www.i18nqa.com/debug/utf8-debug.html

colnames(Breweries)[1] <-c("Brewery_id")
library(plyr)


mergeBeers<- merge(x = Breweries, y = Beers, union("Brewery_id"), all=TRUE)
