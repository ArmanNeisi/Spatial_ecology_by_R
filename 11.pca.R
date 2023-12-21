# multivariate analysis:
# نکته) متدی که خم‌های باندها را با هم کُمپکت می‌کند و در انتها آنرا تبدیل به یک باند میکند

library(imageRy)
library(terra)
library(viridis)

dev.off()

im.list()

sent <- im.import("sentinel.png")

pairs(sent) #برای اطمینان از میزان کورلیشن بین اجزا

# perform pca
sentpc <- im.pca2(sent)  #possible range of every components
sentpc
pc1 <- sentpc$pc10   #first component 
plot(pc1)  

viridis <- colorRampPalette(viridis(7)(255)   #for changing the legend
plot(pc1, col=viridis)

# calculating standard variation ontop of pc1
pc1sd3 <- focal(pc1, matrix(1/9, 3, 3), fun=sd)
plot(pc1sd3, col= viridis)  

pc1sd7 <- focal(pc1, matrix(1/49, 7, 7), fun=sd)
plot(pc1sd7, col= viridis)

par(mfrow= c(2, 3)
im.plotRGB(sent, 2, 1, 3)
#sd from the variability script:
plot(pc3, col= viridis)
plot(pc7, col= viridis)
plot(pc1, col= viridis)
plot(pc1sd3, col= viridis)
plot(pc1sd7, col= viridis)
# we stack them and put them altogether on one plot
    
# stack all the standard variation layers:
sdstack <- c(sd3, sd7, pc1sd3, pc1sd7)
names(sdstack) <- c("sd3", "sd7", "pc1sd3", "pc1sd7")
plot(sdstack, col= viridis)    
