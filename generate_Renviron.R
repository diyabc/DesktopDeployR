# generate Renviron file for prepare.R

R_lib <- file.path(getwd(), "app", "library")
if(!dir.exists(R_lib)) dir.create(R_lib, recursive = TRUE)

Renviron_file <- ".Renviron"
writeLines(
    c(
        paste0("R_LIBS_USER=", '"', R_lib, '"'),
        paste0("RTOOLS40_HOME=", '"', "C:\\rtools40", '"')
    ),
    file(Renviron_file)
)