install.packages("stringi")
Beers <- read.csv("Beers.csv", header = TRUE, sep = ",")
Breweries <- read.csv("Breweries.csv", header = TRUE, sep = ",")
http://www.i18nqa.com/debug/utf8-debug.html
#replace to actual encoding
Beers[13,"Name"] <- gsub("Ã©", "é", Beers[13,"Name"])

#rows that have symbol
cleanup <- grep("Ã©",Beers$Name)
cleanup <- as.vector(cleanup)
if 

while (length(grep("Ã©",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("Ã©", "é", Beers[cleanup,"Name"]);
  print(cleanup)
}

ö

#rows that have symbol
cleanup <- grep("Ã¶",Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("Ã¶",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("Ã¶", "ö", Beers[cleanup,"Name"]);
  print(cleanup)
}

#this is not working need to replace this gibberish with '
cleanup <- grep("â€™",Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("â€™",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("â€™", '\'', Beers[cleanup,"Name"]);
  print(cleanup)
}

#rows that have symbol
cleanup <- grep("â€˜",Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("â€˜",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("â€˜", "‘", Beers[cleanup,"Name"]);
  print(cleanup)
}

#rows that have symbol
cleanup <- grep("Â°",Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("Â°",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("Â°", "°", Beers[cleanup,"Name"]);
  print(cleanup)
}

#rows that have Ã¼ 	
cleanup <- grep("Ã¼",Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("Ã¼",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("Ã¼", "ü", Beers[cleanup,"Name"]);
  print(cleanup)
}
#fix this one too
#rows that have â„¢
cleanup <- grep(as.character("â„¢"),Beers$Name)
cleanup <- as.vector(cleanup)

while (length(grep("â„¢",Beers$Name)) > 0 ) {
  Beers[cleanup,"Name"] <- gsub("â„¢", "™", Beers[cleanup,"Name"]);
  print(cleanup)
}