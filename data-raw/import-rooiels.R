#import-rooiels
load(file = "data-raw/rooiels.rda")
rooiels$baboons_dangerous <- factor(rooiels$baboons_dangerous)
usethis::use_data(rooiels, overwrite = TRUE)
