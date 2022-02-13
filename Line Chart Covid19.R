
#################################
# Covid Cases Graph
#################################
data1 <- read.csv("https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_malaysia.csv")
names(data1)
data1$date <- as.Date.factor(data1$date)


#Select only Jan 2021 - Feb 2022
data2 <- filter(data1, date >= "2021-01-01")
ggplot(data2, aes(x=date, y=cases_new)) + 
  geom_line() + #line chart
 ggtitle("Covid-19 New Cases in Malaysia (Jan 2021 - Feb 2022)") + #title for all 
  xlab("Date") +  #x axis title
  ylab("New Cases") + #y axis title
 scale_x_date(date_labels = "%d %b %y", date_breaks= "1 weeks") + 
  scale_y_continuous(breaks = seq(1000,25000, by=1000)) + 
  theme(plot.title = element_text(hjust=0.5,  # to make title center
                                  size=16, 
                                  family = "serif"),
        axis.text.x = element_text(angle=90,  #untuk rotate axis 
                                   size=7),
        axis.text.y = element_text(size=8),
        panel.background = element_blank(), #to make background white
        # to display only y axis line grid
        panel.grid.major.y = element_line(colour = "grey", 
                                          size=0.01))  + 
  geom_hline(yintercept = max(data2$cases_new), 
             color="#AE55F4", size=1, lty=1)  #add line h previous high 


#Select May 2021 - Feb 2022
data2 <- filter(data1, date >= "2021-05-01")
ggplot(data2, aes(x=date, y=cases_new)) + 
  geom_line() + #line chart
  ggtitle("Covid-19 New Cases in Malaysia (May 2021 - Feb 2022)") + #title for all 
  xlab("Date") +  #x axis title
  ylab("New Cases") + #y axis title
  scale_x_date(date_labels = "%d %b %y", date_breaks= "1 weeks") + 
  scale_y_continuous(breaks = seq(2000,25000, by=1000)) + 
  theme(plot.title = element_text(hjust=0.5,  # to make title center
                                  size=16, 
                                  family = "serif"),
        axis.text.x = element_text(angle=90,  #untuk rotate axis 
                                   size=7),
        axis.text.y = element_text(size=8),
        panel.background = element_blank(), #to make background white
        # to display only y axis line grid
        panel.grid.major.y = element_line(colour = "grey", 
                                          size=0.01))  + 
  geom_hline(yintercept = max(data2$cases_new), 
             color="#4D54E2", size=1, lty=1)  #add line h previous high 


#Select Jul 2021 - Feb 2022
data2 <- filter(data1, date >= "2021-07-01")
ggplot(data2, aes(x=date, y=cases_new)) + 
  geom_line() + #line chart
  geom_point(pch=1, size=3, col="#898C8C") +
  ggtitle("Covid-19 New Cases in Malaysia (Jul 2021 - Feb 2022)") + #title for all 
  xlab("Date") +  #x axis title
  ylab("New Cases") + #y axis title
  scale_x_date(date_labels = "%d %b %y", date_breaks= "1 weeks") + 
  scale_y_continuous(breaks = seq(2000,26000, by=1000)) + 
  theme(plot.title = element_text(hjust=0.5,  # to make title center
                                  size=16, 
                                  family = "serif"),
        axis.text.x = element_text(angle=90,  #untuk rotate axis 
                                   size=7),
        axis.text.y = element_text(size=8),
        panel.background = element_blank(), #to make background white
        # to display only y axis line grid
        panel.grid.major.y = element_line(colour = "grey", 
                                          size=0.01))  + 
  geom_hline(yintercept = max(data2$cases_new), 
             color="#046177", size=1, lty=1)  #add line h previous high 


#Select Jan 2022 - Feb 2022
data2 <- filter(data1, date >= "2022-01-01")
ggplot(data2, aes(x=date, y=cases_new)) + 
  geom_line() + #line chart
  geom_point(pch=1, size=3, col="#BB74F3") +
  ggtitle("Covid-19 New Cases in Malaysia (Jan 2022 - Feb 2022)") + #title for all 
  xlab("Date") +  #x axis title
  ylab("New Cases") + #y axis title
  scale_x_date(date_labels = "%d %b %y", date_breaks= "1 day") + 
  scale_y_continuous(breaks = seq(2000,25000, by=1000)) + 
  theme(plot.title = element_text(hjust=0.5,  # to make title center
                                  size=16, 
                                  family = "serif"),
        axis.text.x = element_text(angle=90,  #untuk rotate axis 
                                   size=7),
        axis.text.y = element_text(size=8),
        panel.background = element_blank(), #to make background white
        # to display only y axis line grid
        panel.grid.major.y = element_line(colour = "grey", 
                                          size=0.01))  + 
  geom_hline(yintercept = max(data2$cases_new), 
             color="#046177", size=1, lty=1)  #add line h previous high 

