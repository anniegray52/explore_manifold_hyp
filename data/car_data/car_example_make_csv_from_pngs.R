library(png)
library(plotly)
library(RSpectra)

nangles = 72
#npixels = 768*576 #hi res
npixels = 384*288 



## put three images next each other in vector form assuming they are the same resolution
#
#data_mat <- matrix(, nrow = npixels, ncol = 3*nangles)
#
# filenames = sprintf("138_r%d.png", (0:72*5))
# for(i in 1:nangles){
#   path <- paste0("./car images/", filenames[i])
#   data_mat[, i] <- c(readPNG(path))
# }
# 
# filenames = sprintf("160_r%d.png", (0:72*5))
# for(i in 1:nangles){
#   path <- paste0("./car images/", filenames[i])
#   data_mat[, 72+i] <- c(readPNG(path))
# }
# 
# filenames = sprintf("950_r%d.png", (0:72*5))
# for(i in 1:nangles){
#   path <- paste0("./car images/", filenames[i])
#   data_mat[, 144+i] <- c(readPNG(path))
# }

data_mat <- matrix(, nrow = npixels, ncol = nangles)

##160 is the lable of the car images

#filenames = sprintf("160_r%d.png", (0:72*5))
#for(i in 1:nangles){
# path <- paste0("./car images/", filenames[i])
# data_mat[, i] <- c(readPNG(path))
#}

#write.csv(data_mat,"car_pixels.csv", row.names = FALSE, col.names=FALSE)


##809 is the label of the watering can images

filenames = sprintf("809_r%d.png", (0:72*5))
for(i in 1:nangles){
  path <- paste0("./watering_can_images/", filenames[i])
  data_mat[, i] <- c(readPNG(path))
}

write.csv(data_mat,"water_pixels.csv", row.names = FALSE, col.names=FALSE)


