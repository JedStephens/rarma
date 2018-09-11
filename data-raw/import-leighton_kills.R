# Import the caracals dataset
library(sf)
load("data-raw/leighton_kills_250.Rda")
# Leighton used confusing column titles "easting" and "southing" when the cordinates were actually measured on WGS84. These are later corrected.

caracals_raw <- leighton_kills_250
colnames(caracals_raw) <- c("longitude", "latitude", "sex", "age", "prey")


# caracals_smpl -----------------------------------------------------------

caracals_smpl <- caracals_raw
usethis::use_data(caracals_smpl, overwrite = TRUE)


# caracals_sf -------------------------------------------------------------

caracals_sf <- st_as_sf(caracals_raw, coords = c("longitude", "latitude"),
                     crs = "+proj=longlat +datum=WGS84 +no_defs + ellps=WGS84 +towgs84=0,0,0")

usethis::use_data(caracals_sf, overwrite = TRUE)


# caracals_gis ------------------------------------------------------------


