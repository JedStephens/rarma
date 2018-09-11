# Libraries
library(tidyverse)
# Importing the data for the ECO3016F exam questions.
# This is a histroy of economic thought course run at UCT.
exams_raw <- read.csv("data-raw/eco3016f-2018-exams-questions.csv", stringsAsFactors = TRUE)

# First we would like to remove observations which where marked absent.
exams_raw <- subset.data.frame(exams_raw, exams$MED.AB != "AB")

# The COUNT and Exam.Total Collumn need to be removed before the data can be tidied.
exams_reshape <- select(exams_raw, respid, starts_with("Sec_")) %>% gather(key = "section", value = "marks", -respid) %>% group_by(respid)
