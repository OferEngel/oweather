## code to prepare `weather` dataset goes here
library(tidyverse)
library(janitor)
weather_raw <- read_csv(paste0(here::here(),
                               "/data-raw/weather/weather.csv"),
                        show_col_types=FALSE)
weather <- weather_raw %>% clean_names()
use_r("weather")
devtools::document()

usethis::use_data(weather, overwrite = TRUE)
library(usethis)
use_git()
use_github("oweather")
use_tutorial("explore weather", "exploring US weather")
