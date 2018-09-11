# Darwin, C. R. 1878. The effects of cross and self fertilisation in the vegetable kingdom. 2d edition. London: John Murray.
# Experiment design pages 11-15.
# Results pages 16 - Zea mays (maize)
# Triva: dataset of Darwin sent to Galton

plant_fertilisation_vector <- c(23 + 4/8, 17 +3/8,
                                12, 20 +3/8,
                                21, 20,
                                22, 20,
                                19 +1/8, 18 +3/8,
                                21 +4/8, 18 +5/8,
                                22 + 1/8, 18 + 5/8,
                                20 +3/8, 15+2/8,
                                18 + 2/8, 16 + 4/8,
                                21 + 5/8,  18,
                                23 + 2/8, 16 + 2/8,
                                21, 18,
                                22 + 1/8, 12 +6/8,
                                23, 15 +4/8,
                                12, 18)
# Make matrix
plant_fertilisation_inches <- matrix(plant_fertilisation_vector, ncol = 2, byrow = TRUE)

# Convert to cm & round to one decimal
plant_fertilisation <- data.frame(round(plant_fertilisation_inches * 2.54, 1)
                                  )
colnames(plant_fertilisation) <- c("cross-fertilised", "self-fertilised")

plant_fertilisation <- tidyr::gather(plant_fertilisation, key = "group", value = "height")
plant_fertilisation$group <- factor(plant_fertilisation$group)

# Remove intermediates
rm(plant_fertilisation_vector, plant_fertilisation_inches)

# Send to data
usethis::use_data(plant_fertilisation, overwrite = TRUE)
