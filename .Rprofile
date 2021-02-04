## local .Rprofile

# default repos
local({
    r <- getOption("repos")
    r["CRAN"] <- "https://cran.r-project.org"
    options(repos=r)
})

# install package list
install_pkg <- function(pkg_list, force_update = TRUE, R_lib = NULL,
                        type = getOption("pkgType")) {
    
    
    message("---------------------------------")
    
    # current installed packages
    cur_pkg_list <- installed.packages(lib.loc = R_lib)[,1]
    # current installed and out-dated packages
    old_pkg_list <- old.packages(lib.loc = R_lib)[,1]
    
    # package up-to-date
    pkg_ok_list <- pkg_list[(pkg_list %in% cur_pkg_list) & 
                                !(pkg_list %in% old_pkg_list)]
    
    if(length(pkg_ok_list) > 0) {
        message("-- Available and up-to-date packages:")
        message(paste(pkg_ok_list, collapse = "\n"))
        message("---------------------------------")
    }
    
    # package to update
    pkg2update_list <- pkg_list[pkg_list %in% old_pkg_list]
    
    if(length(pkg2update_list) > 0) {
        message("-- Packages to update:")
        message(paste(pkg2update_list, collapse = "\n"))
        message("--> updating")
        Sys.sleep(2)
        install.packages(pkg2update_list, lib = R_lib, type = type)
        message("---------------------------------")
    }
    
    # missing package
    missing_pkg_list <- pkg_list[!pkg_list %in% cur_pkg_list]
    
    if(length(missing_pkg_list) > 0) {
        message("-- Missing packages:")
        message(paste(missing_pkg_list, collapse = "\n"))
        message("--> installing")
        Sys.sleep(2)
        install.packages(missing_pkg_list, lib = R_lib, type = type)
        message("---------------------------------")
    }
}
