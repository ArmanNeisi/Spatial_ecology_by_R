# external data

library(terra)

#set the working directory based on your path: 
# setwd("yourpath")
# windows users: c://path/downloads
# my own:
setwd("مسیر عکسی که دانلود کردید در کامپیوترتان")
naja <- rast("نام عکس")  #like in im.import 

plotRGB(Najaf, r=1, g=2, b=3)  # im-plotRGB
