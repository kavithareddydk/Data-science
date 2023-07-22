
# TO INSERT OR LOAD DATA SETS GIVEN IN R 
airquality<-datasets::airquality

# TO PRINT TOP 10 ROWS OF DATA SET
head(airquality,10)

### TO PRINT BOTTOM 10ROWS OF DATA SET 
tail(airquality,10)

### TO  PRINT ALL ROWS OF COLOUMN 1&2 IN AIRQUALITY DATA SET
airquality[,c(1,2)]

## SUMMARY OF DATA SET
summary(airquality)
summary(airquality$Wind)
## TO PLOT DATASETS IN DIFFERENT GRAPH
plot(airquality$Wind)
plot(airquality$Temp)
plot(airquality)

## TO PLOT AS LINE GRAPH (TYPE= l)
plot(airquality$Ozone, type="l")
#### TO PLOT AS points GRAPH (TYPE= p)
plot(airquality$Wind,type= "p")
plot(airquality$Temp,type= "l")

### TO PLOT X LABEL AND Y LABEL AND MAIN NAME OF GRAPH 
plot(airquality$Wind,Xlab='Ozone concentration',ylab = 'No of instances', main ='Ozone levels in NY city',col='blue')


###HORIZONTAL BAR PLOT 

barplot(airquality$Ozone, main= 'Ozone concentration in the air',ylab='Ozone levels',col = 'blue'',horiz = T,axes = T)

barplot(airquality$Ozone, main= 'Ozone concentration in the air',ylab='Ozone levels',col = 'blue'',horiz = F,axes = T)

### HISTOGRAM
 hist(airquality$Temp) # Here it is skewed partialy toward one side
hist(airquality$Wind,main='soalr radiation values in air',xlab='solar rad',col = 'blue')

### Single box plot
boxplot(airquality$Wind, main= "Boxplot")   ### Used to find out outliers

### Mltiple box plot 
boxplot(airquality[,1:4], main="MULTIPLE")

## MARGIN OF THE GRID(refer book)
par(mfrow = c(3,3), mar=c(2,5,2,3), las= "0", bty = "0")

plot(airquality$Ozone)
plot(airquality$ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
barplot(airquality$Ozone, main= 'Ozone concentration in air',xlab='Ozone levels', col='green', horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
## MULTIPLE BOX PLOTS
boxplot(airquality[,0:4], main="MULTIPLE BOX PLOTS")

barplot(airquality$Ozone, main= 'Ozone concentration in the air', ylab='Ozone levels',col = 'blue'',horiz = F,axes = T)
### HERE HORIZONTAL= T MEANS HORIZONTAL GRAPH AND IF HORIZONTAL =F MEANS FALSE







