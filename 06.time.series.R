# time series anslysis

library(imageRy)
library(terra)

im.list()

#import the data
EN01 <- im.import("EN.01.png")
EN13 <- im.import("EN.13.png")

par(mfrow= c(2, 1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

#using the first elements(bands) of images and make differences 
dif = EN01[[1]] - EN13[[1]]
dev.off()
plot(dif)

#pallete
cldif<- colorRampPalette(c("blue", "white", "red")(100)
plot(dif, col= cldif)


## new example: temperature in Greenland 

g2000 <- im.import("greenland.2000.tif")
clg<- colorRampPalette(c("black", "blue", "white", "red")(100)
plot(g2000, col= clg)

g2005 <- im.import("greenland.2000.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

plot(g2015, col= clg)

par(mfrow= c(2, 1))
plot(g2015, col= clg)
plot(g2015, col= clg)   

 # stacking the data   قراردادن گراف های همه سالها در کنار یکدیگر                  
stackg <- c(g2000, g2005, 2010, 2015)
plot(stackg, col= clg)

# exercise: make the differences between the first and final elements of the stack

difg = g2000[[1]] - g2015[[1]]
plot(difg)    
cldifg<- colorRampPalette(c("black", "blue", "white", "red")(100)
plot(difg, col= cldifg)       
