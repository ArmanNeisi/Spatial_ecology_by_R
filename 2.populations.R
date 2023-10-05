# codes related to population ecology

# a package is needed for point pattern analysis
install.packages("spatstat")
library("spatstat")

# let's use bei data:
#data description:
# آدرس اينترنتي پکیج

bei

#plotting the data
plot(bei)

#changing dimension - cex
plot(bei, cex= .5)

#changing the symbol - pch
plot(bei, cex= .5, pch=19)

#additional datasets
plot(bei.extra)

#let's use only part of the dataset: elev
plot(bei.extra$elev)
elevation <- bei.extra$elev

plot(elevation)

# second method to select element
elevation2 <- bei.extra[[1]]
plot(elevation2)
