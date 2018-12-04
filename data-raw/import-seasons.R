#import-season table
library(readr)
seasons <- read_delim("data-raw/seasons.csv",
                      ";", escape_double = FALSE, trim_ws = TRUE)
usethis::use_data(seasons, overwrite = TRUE)
