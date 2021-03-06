library(arules)
library(arulesViz)
movie <- read.csv(file.choose())
View(movie)
movie1 <- apriori(as.matrix(movie[,6:15]),parameter = list(support=0.03,confidence=0.6,minlen=2))
movie1 <- apriori(as.matrix(movie[,6:15]),parameter=list(support=0.05,confidence=0.67,minlen=4))
movie1 <- apriori(as.matrix(movie[,6:15]),parameter ==list(support=0.08,confidence=0.80,minle=2))
movie1 <- apriori(as.matrix(movie[,6:15]),parameter = list(support=0.11,confidence=0.3,minlen=3))
movie1 <- apriori(as.matrix(movie[,6:15]),parameter=list(support=0.1,confidence=0.65,minlen=2))
inspect(movie1,by="lift")
inspect(sort(movie1,by="lift"))
inspect(head(sort(movie1,by="lift")))
plot(movie1)
windows()
plot(movie1,method = "grouped")
plot(movie1,method = "graph")
plot(movie1[1:20],method = "graph")
write(movie1,file = "my_movie_result.csv")
getwd()
