#vegetation indices

library(imageRy)
library(terra)

im.list()

im.import("motogrosso-l5-1992219-lrg.jpg")
# band: 1= NIR, 2=red, 3=green
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m1992, r=2, g=1, b=3)
im.plotRGB(m1992, r=2, g=3, b=1)


# import recent image
# عددها را از خود نتایج انتخاب میکنیم 
m2006 <- im.import("motogrosso-l5-2006209-lrg.jpg")
im.plotRGB(m2006, r=2, g=3, b=1)

# exercise; build a multiframe with 1992 and 2006 images:
im.plotRGB(m2006, r=2, g=3, b=1)
im.plotRGB(m2006, r=2, g=3, b=1)
par(mfrow= c(1,2))

#mfrow means a multiframe which begins with row

plot(m1992[[1]])

# DVI = NIR - RED
 # band: 1= NIR, 2=red, 3=green

dvi1992 <- m1992[[1]] - m1992[[2]]
plot(dvi1992)

cl<- colorRampPalette(c("dark blue", "red", "yellow ", "black"))
plot(dvi1992, col=cl)

#exercise; calculate div of 2006:
dvi2006 <- m2006[[1]] - m2006[[2]]
plot(dvi2006)
cl<- colorRampPalette(c("dark blue","yellow ", "red" "black"))(100) #specify 
plot(dvi2006, col=cl)

#DVI
ndvi1992 = (dvi1992[[1]] - dvi1992[[2]])/(m1992[[1]] + m1992[[2]]
ndvi1992 = dvi1992/(ndvi1992[[1]] - ndvi1992[[2]])
plot(ndvi1992, col=cl)    

ndvi2006 = dvi2006/(ndvi2006[[1]] - ndvi2006[[2]])
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)                      
par(mfrow=1,2)
                                          
plot(ndvi2006, col=cl)                                  
