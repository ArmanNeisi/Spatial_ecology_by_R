#website link:

# to read the images of copernicus, we need this libraries:
install.packages("ncdf4")
library(ncdf4)
library(terra)

setwd("مسیر ذخیره عکسمان در کامپیوتر")

soilm2023 <- rast("nameofthefile")
plot(soilm2023)

#there are two elements, let's use first one
plot(soilm2023[1])

cl<- colorRampPalette(c("red","orange", "yellow"))(100)
plot(soilm2023[[1]], col=cl)

ext <- c(22, 26, 55, 57) #minlong, max long, minlat, maxlat
soilm2023c <- crop(soilm2023, ext)

plot(soilm2023c[[1]], col= cl)


#new image:
soilm2023-24 <- rast("nameofthefile")
plot(soilm2023-24)
soilm2023-24c <- crop(soilm2023-24, ext)
# we can crop this new image based on previous image
plot(soilm2023-24c[[1]], col= cl)
