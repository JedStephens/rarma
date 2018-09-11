distance_hsds <- read.table("data-raw/DISTANCE.DAT", quote="\"", comment.char="")
# .dat file from NC State
# Dataset number 115, page 87, of A Handbook of Small Data Sets, Hand, D.J, 1994.
distance <- data.frame(cbind(append(distance_hsds[,1], distance_hsds[,3]),
                             append(distance_hsds[,2], distance_hsds[,4]))
                       )
colnames(distance) <- c("road_distance", "linear_distance")
usethis::use_data(distance, overwrite = TRUE)
