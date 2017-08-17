library(ggplot2)
#require(gridExtra)

data <- read.csv("file:///C:/Users/aditya.am/Documents/Baltic Comparison.csv")
head(data)
data$date <- gsub(x=data$date,pattern=" 0:00",replacement="",fixed=T)

data_new <- data.frame(data$date,data$baltic_pmt)
data_new_2 <- unique(data_new)

ggplot() +   geom_line(data=data_new, aes(x=data.date, y=data.baltic_pmt, group =1)) +
  geom_point (data=data, aes(x=date, y=baltic_pmt_equivalent,col=operator)) +
  theme(axis.text.x=element_text(angle=90,hjust=1)) +
  labs(x="Date",y="")


