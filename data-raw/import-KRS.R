#import-KRS-data
KRS <- readRDS("data-raw/KRS_ANON.v1_qlabelled.Rds")
# Make sure data is Tibble
KRS <- as_tibble(KRS)
# Write Data
usethis::use_data(KRS, overwrite = TRUE)
