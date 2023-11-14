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
