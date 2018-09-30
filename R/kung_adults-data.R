#' @name kung_adults
#' @title Height and weight measurements of the Dobe !Kung adults circa 1967
#' @docType data
#' @description
#' Nancy Howell undertook the research of Dobe !Kung people over an extended peroid.
#' This data is weight and height on four 'campaigns' of measurement in different seasons,
#'  and weights taken more frequently.
#'  Each respondant is uniquely identificed by a caseid.
#'  To remove measuremnt bias this data takes the average height and weight (when recorded) for each
#'  individual from this longidinal study.
#'  (One would expect weight to fluctuate, but even the height measurments had fluctuations indicating some measurment bais).
#'  This dataset retains only adults, so that taking average height and weight would be appropriate.
#'  It also includes only individuals with thier sex recorded as either "male" or "female", rather than some entries which had numbers
#' @format A tibble with 333 observations for 6 variables
#' @details  Derived from the larger longitidunal dataset with N = 3081 and 33 variables
#' @source Measurements of individuals as described in Howell, Demography of the Dobe !Kung, 2000:193-211. http://hdl.handle.net/1807/10398
#' @references  Howell, Nancy. "Demography of the Dobe Kung." Population and Social Structure: Advances in Historical Demography (2000:193-211).
#' Howell, Nancy. Height & Weight Observations. Avaible: https://tspace.library.utoronto.ca/handle/1807/10398
#' @keywords datasets kung adults height weight howell
"kung_adults"
