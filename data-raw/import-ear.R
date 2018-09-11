#import-ear-data
# page 267, dataset number 328.
library(readr)
library(tidyverse)

ear_raw <- readr::read_table2("data-raw/EAR.DAT", col_names = FALSE)

colnames(ear_raw) <- rep(c("frequent_swimmer", "location", "age_group",
                           "sex", "infections"), 4)
ear <- dplyr::bind_rows(ear_raw[,1:5], ear_raw[,6:10],
                        ear_raw[,11:15], ear_raw[,16:20])

ear$frequent_swimmer <- recode_factor(ear$frequent_swimmer,
                                      "1" = FALSE, "2" = TRUE) %>% as.logical()
ear$location  <- recode_factor(ear$location, "1" = "non-beach", "4" = "beach")
ear$age_group <- recode_factor(ear$location,
                               "2" = "aged 15-19","3" = "aged 20-25",  "4" = "aged 24-29")
ear$sex <- recode_factor(ear$sex, "1" = "male", "2" = "female")
ear$RESPID <- c(1:288)

ear <- as.tibble(ear[1:287, c(6, 1:5)])

usethis::use_data(ear, overwrite = TRUE)
