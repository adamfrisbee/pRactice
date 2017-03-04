#Section 6 Solution 
#Adam Frisbee

#Import dataset
moviedata <- read.csv("~/datascience/datasets/Section6-Homework-Data.csv")

#Store first plot in plot1 variable
plot1 <- ggplot(data=moviedata, mapping=aes(x=Genre, y=Gross...US, color=Studio, size=Budget...mill.)) + 
  geom_point()

#Filter out genres: action, adventure, animation, comedy, and drama
genrefilt <- (moviedata$Genre=="action") | (moviedata$Genre=="adventure") | (moviedata$Genre=="animation") | (moviedata$Genre=="comedy") | (moviedata$Genre=="drama")

#Filter out studios: Buena Vista, Fox, Paramount Pictures, Sony, Universal
studiofilt <- (moviedata$Studio=="Buena Vista") | (moviedata$Studio=="Fox") | (moviedata$Studio=="Paramount Pictures") | (moviedata$Studio=="Sony") | (moviedata$Studio=="Universal")

#Store new filters in moviedata2
moviedata2 <- moviedata[genrefilt & studiofilt,]


plot1 <- ggplot(data=moviedata2, mapping=aes(x=Genre, y=Gross...US, color=Studio, size=Budget...mill.)) + 
  geom_point()
