Roaches <- read.table(file = "Data.txt", header = T)
str(Roaches)
library(reshape2)
Roaches2 = melt(Roaches, id.vars = "Time", variable.name = "Color", value.name = "value")
library(ggplot2)
Roaches3 = aggregate(Roaches2$value, by = list(Roaches2$Time, Roaches2$Color), FUN = "mean", na.rm=T)
names(Roaches3) = c("Time", "Color", "value")
Roaches3$value[is.nan(Roaches3$value)] <- NA
Roaches4 = aggregate(Roaches2$value, by = list(Roaches2$Time, Roaches2$Color), FUN = "sd", na.rm=T)
names(Roaches4) = c("Time", "Color", "valuesd")
Roaches5 = merge(Roaches3, Roaches4, by = c("Time", "Color"))
Roaches5$Color = factor(Roaches5$Color, levels = levels(Roaches5$Color)[c(4,3,2,1)])
Roaches5$Time = factor(Roaches5$Time, levels = levels(Roaches5$Time)[c(3,6,1,2,4,5)])
ggplot(Roaches5, aes(x=Time, y=value, fill = Color)) + geom_bar(position = "dodge", stat="identity") + geom_errorbar(data = Roaches5, aes(fill = Color, ymin = value-valuesd, ymax = value+valuesd), position = "dodge") +labs(x="Time period", y="# times crossed gridlines")

ggplot(Roaches5, aes(x=Time, y=value)) + geom_line(aes(group = Color, color = Color)) +geom_point(aes(group = Color, color = Color)) +geom_errorbar(data = Roaches5, aes(fill = Color, color = Color, ymin = value-valuesd, ymax = value+valuesd, width = 0.1)) + labs(x="Time period", y="# times crossed gridlines")

#ANOVA
Color.mod1 = lm(value ~ Color, data = Roaches5)
summary(Color.mod1)
anova(Color.mod1)
#COlor not significantly different on average
Time.mod1 = lm(value ~ Time, data = Roaches5)
summary(Time.mod1)
anova(Time.mod1)
#All time periods are significantly different from each other

#Compare different colors in each time period
Roaches.loop = data.frame(Color = Roaches2$Color[1:20])
anova.results = vector("list",6)
which.sig = vector("list",6)
Time = c("2:00:00", "5:00:00", "14:00:00", "17:00:00", "20:00:00", "23:00:00")
for(i in 1:6){
  Roaches.loop$Color = Roaches2$Color[Roaches2$Time == Time[i]]
  Roaches.loop$value = Roaches2$value[Roaches2$Time == Time[i]]
  mod1 = lm(value ~ Color, data = Roaches.loop)
  anova.results[[i]] = anova(mod1)
  names(anova.results)[i] = paste("Time period", Time[i], sep = " ")
  #Tukey HSD
  a1 = aov(Roaches.loop$value ~ Roaches.loop$Color)
  which.sig[[i]] = TukeyHSD(x=a1, 'Roaches.loop$Color')
}
#something significant at 2am, 2pm, 8pm, 11pm
#Blue and red significantly higher than control at 2am, red significantly higher than green at 2pm, red significantly higher than blue at 8pm, red and green significantly lower than blue at 11pm