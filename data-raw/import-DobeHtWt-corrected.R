#import-kung_adults
library(tidyverse)
DobeHtWt <- read.csv("data-raw/DobeHtWt-corrected.csv", stringsAsFactors=FALSE)

DobeHtWt_mean_msrmt <- group_by(DobeHtWt, caseid) %>%
  summarise(wtkgs_mean = mean(wtkgs, na.rm = TRUE), htcms_mean = mean(htcms, na.rm = TRUE)) %>%
  na.omit()

# Remove the last observation which has the caseid of "no-number".
DobeHtWt_mean_msrmt <- DobeHtWt_mean_msrmt[c(1:nrow(DobeHtWt_mean_msrmt)-1),]

# This dataframe has other variables relating to the respondant
DobeHtWt_respid_var <- select(DobeHtWt, caseid, sex26, yearbir, growing) %>% na.omit() %>% group_by(caseid) %>%
  summarise(sex = first(sex26), year_birth = first(yearbir), growing_status = first(growing))

kung_adults <- inner_join(DobeHtWt_mean_msrmt,
                          (DobeHtWt_respid_var %>% filter(growing_status == "adult,born before 1948")), by = "caseid")

kung_adults$sex <- recode(kung_adults$sex, male = "male", female = "female", .default = NA_character_) %>% as.factor()
# Ensure that the data is now free from oddities
kung_adults <- na.omit(kung_adults)

usethis::use_data(kung_adults, overwrite = TRUE)
