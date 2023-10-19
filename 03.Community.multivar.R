#19 Oct جزوه

install.packages("vegan")
library(vegan)

data(dune)
head(vegan)

ord <- decorana(dune)
ord

ldc1 = 3.7004
ldc2 = 3.1166
ldc3 = 1.30053
ldc4 = 1.47888
#عددها را از ماتریکس کپی میکنیم

total = ldc1 + ldc2 + ldc3 + ldc4
pldc1 = ldc1 * 100/ total
#p= percentage
pldc2 = ldc2 * 100 / total
pldc3 = ldc3 * 100/ total
pldc4 = ldc4 * 100/ total

pldc1
pldc2
pldc3
pldc4

pldc1 + pldc2

plot(ord)
