#import-woodgate-S2-data
library(readr)
woodgate_s2 <- read_csv("data-raw/woodgate-2018-S2.csv")
# Any missing values can be safely set to zero because of the way Woodgate defined sightings.
woodgate_s2[is.na(woodgate_s2)] <- 0
woodgate_display <- woodgate_s2
# Send to data
usethis::use_data(woodgate_display, overwrite = TRUE)
