required_packages <- c("corrplot")

missing_packages <- required_packages[!required_packages %in% installed.packages()[, "Package"]]

if (length(missing_packages) > 0) {
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
}

invisible(lapply(required_packages, library, character.only = TRUE))
