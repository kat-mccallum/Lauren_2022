### My Data Analysis Project

### Using groundhog to manage packages ---------------------
library("groundhog")
pkgs <- c("tidyverse","rdryad")
groundhog.library(pkgs, "2022-09-01")

library(tidyverse)
library(rdryad)


### Downloading the necessary data -------------------------

# doi : https://doi.org/10.5061/dryad.bcc2fqzd1
rdryad::dryad_get_cache()

# setting custom cache location
rdryad_cache <- rdryad::dryad_get_cache()
rdryad_cache$cache_path_set(full_path = normalizePath("//Users/laurengill/Github/Lauren_2022/data", mustWork = FALSE))
# mustWork = F because path does not (yet) exist
rdryad_cache$cache_path_get()

rdryad::dryad_download(dois = "10.5061/dryad.bcc2fqzd1")

### Reading in the data ---------------------
roadmammal <- read_delim("data/10_5061_dryad_bcc2fqzd1/RawData_JournalSubmission_Final.csv", delim = ";")

