# external data

library(terra)

#set the working directory based on your path: 
# setwd("yourpath")
# windows users: c://path/downloads
# my own:
setwd("مسیر عکسی که دانلود کردید در کامپیوترتان")
naja <- rast("نام عکس")  #like in im.import 

plotRGB(Najaf, r=1, g=2, b=3)  # im-plotRGB

exercise: download the second image from same site and send it in R
najaaug <- rast("آدرس دوم")
plotRGB(Najaaug, r=1, g=2, b=3)

par(mfrow= c(2, 1))
plotRGB(Najaf, r=1, g=2, b=3)
plotRGB(Najaaug, r=1, g=2, b=3)

# multitemporal change detection 
najwdif= naja[[1]] - Najaaug[[1]]
cl <- ColorRampPalette("brown", "grey", "orange")
plot(najadif, col= cl)
