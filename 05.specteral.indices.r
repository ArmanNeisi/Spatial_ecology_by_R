#vegetation indices

library(imageRy)
library(terra)

im.list()

im.import("motogrosso-l5-1992219-lrg.jpg")
# band: 1= NIR, 2=red, 3=green
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m1992, r=2, g=1, b=3)
im.plotRGB(m1992, r=2, g=3, b=1)
