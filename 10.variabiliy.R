# measurement of RS based variability 

library(imageRy)
library(terra)
library(viridis)

im.list()

sent <- im.import("sentinel.png")

#band 1 = NIR
# band 2 = red
# band 3 = green

im.plotRGB(sent, r=1, g=2, b=3)
im.plotRGB(sent, r=1, g=2, b=3)

NIR <- sent[[1]]
plot(NIR)


#moving window
# focal function 
sd3 <- focal(NIR, matrix(1/9, 3, 3), fun= sd) # matrix describes the dimension of our moving windows
# sd = standard variation 
plot(sd3) #standard variation

colorRampPalette(viridis(7))(255)
plot(sd3, col= viridis)
