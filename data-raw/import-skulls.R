# Skull data import and cleaning
# I express some reservations for this data as I was unable to look at it in person
load(file = "data-raw/skulls.rda")
colnames(skulls) <- c("maximal_breadth", "basibregmatic_height", "basialveolar_length", "nasal_height", "time_period")
skulls_raw <- data.frame(skulls)
skulls_raw$time_period <- dplyr::recode_factor(skulls_raw$time_period,
                                               "1" = "4000BC",
                                               "2" = "3300BC",
                                               "3" = "1850BC",
                                               "4" = "200BC",
                                               "5" = "150 AD")
skulls <- skulls_raw
rm(skulls_raw)
usethis::use_data(skulls, overwrite = TRUE)
