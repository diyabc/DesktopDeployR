# generate Renviron file for prepare.R
R_lib <- file.path(getwd(), "app", "library")
Renviron_file <- ".Renviron"
writeLines(
    paste0("R_LIBS_USER=", R_lib),
    file(Renviron_file)
)