# measurement of RS based variability 

library(imageRy)
library(terra)
library(viridis)

im.list()

sent <- im.import("sentinel.png") #عکس از توی لیست کپی شد

#band 1 = NIR
# band 2 = red
# band 3 = green

im.plotRGB(sent, r=1, g=2, b=3)
im.plotRGB(sent, r=1, g=2, b=3)

NIR <- sent[[1]]
plot(NIR)


#moving window
# focal function 
sd3 <- focal(NIR, matrix(1/9, 3, 3), fun= sd) # matrix describes the dimension of our moving windows; here, 3×3 pixels 
# sd = standard variation 
plot(sd3) #standard variation

colorRampPalette(viridis(7))(255)
plot(sd3, col= viridis)

#exercise: calculate variability I'm a 7×7 pixels moving window
sd7 <- focal(NIR, matrix(1/49, 7, 7), fun= sd) 
plot(sd7, col= viridis)

#exercise 2: plot via par(mfrow()) the 3×3 and the 7×7 standard variation 
par(mfrow= c(1,2))
plot(sd3, col= viridis)  
plot(sd7, col= viridis)  #if we large the moving window, we add the pixels. so we have higher variability and more details. so we have detailed calculation
# higher variability means higher biodiversity

# original image plus the 7×7 sd:
im.plotRGB(sent, r=1, g=2, b=3)
plot(sd, col= viridis)

# multivariate analysis:
# نکته) متدی که خم‌های باندها را با هم کُمپکت می‌کند و در انتها آنرا تبدیل به یک باند میکند
