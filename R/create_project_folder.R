#' Automatically create folders for a project
#'
#' @details Automatically generate a project
#'     folder structure in the working directory of your R session.
#' @export
create_project_folder <- function() {
  dirs <- c(
    "00-raw-data",
    "01-tidy-data",
    "02-scripts",
    "03-plots",
    "04-reports",
    "05-presentations",
    "99-other"
  )

  for (d in dirs) {
    if (!base::dir.exists(d)) {
      base::dir.create(d, showWarnings = FALSE)
    }
  }

  message(paste("The following directories have been created in: ", getwd(), ".", sep = ""))
  for (d in dirs) {
    message(paste("-", d))
  }
}
