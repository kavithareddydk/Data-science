e_quakes<-datasets::quakes
df<-data.frame(col1=1:3, col2 = C("a","b","c"))
quakes[,c(1,2,3)]
quakes[c(1,2,3), c(1,2,3)]
quakes[c(-1,-2), c(3,4)]
head(quakes,10)
head(quakes,-950)
tail(quakes,50)

##vaues of e-quakes
quakes$depth
quakes$mag

summary(quakes$depth)
summary(quakes$mag)


plot(quakes$mag)

 ### scatter plot
plot(quakes$depth, quakes$mag,type = "p")
plot(quakes$stations, quakes$depth, type="p")

plot(quakes$depth, xlab = 'Depth of earth', ylab='No of instances', main = 'Effect of earthquake with depths', col= 'blue')
plot(quakes$stations, quakes$depth, type="p")

### HORIZONTAL BAR PLOT
barplot(quakes$depth, main ='depth of epicentre', ylab ='depth of quake',col = 'blue', horiz = 'T', axes = T)
###  VERTICAL BAR PLOT
barplot(quakes$depth, main ='depth of epicentre', ylab ='depth of quake',col = 'blue', horiz = 'F', axes = T)

### HISTOGRAM
hist(quakes$lat)
hist(quakes$long)
hist(quakes$depth, col = 'blue') ## It is type of bimodal data  set( approxmately) even though they are far apart.
hist(quakes$mag)   ### It is positive skewed data and as mag increases the earthquakes happened are less.
hist(quakes$depth, main = 'depths of earthquakes',xlab ='depth',col ='blue' )


### Single box plot
boxplot(quakes$depth, main = 'Boxplot')
boxplot.stats(quakes$lat)$out
boxplot.stats(quakes$depth)$out

## standard deviation , here na.rm = is to remove NA values in dataset
sd(quakes$depth, na.rm = T)
var(quakes$depth)

## skewness and kurtosis
skewness(e_quakes$depth)
kurtosis(quakes$depth, na.rm = T)
kurtosis(quakes$depth )

###multiple boxplot
boxplot(quakes[,1:4], main = 'multiple box plots')

par(mfrow=c(3,3), mar =c(2,5,3,2),las = 0,bty ="0")
