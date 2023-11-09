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

