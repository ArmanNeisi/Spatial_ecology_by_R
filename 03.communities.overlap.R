# 19 oct جزوه

#relation among species in time:

install.packages("overlap")
library(overlap)

data(kerinci)

head(kerinci)
kerinci
summary(kerinci)

#selecting a species

tiger <- kerinci[kerinci$sps == "tiger", ]

kerinci$timeRad <- kerinci$time * 2 * pi
timeRad

#selecting the time for the tiger
timetig <- tiger$timeRad
densityplot(timetig,  rug=True)

#exercise: select only data on macaque individuals

macaque <- kerinci[kerinci$sps == "macaque", ]
head(macaque)

kerinci$timeRad <- kerinci$time * 2 * pi
timeRad

timemac <- macaque$timeRad
densityplot(timemac,  rug=True)

#overlap

overlapPlot(timtig, timemac)
