% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{download_datasets_files}
\alias{download_datasets_files}
\title{download_datasets_files}
\usage{
download_datasets_files(
  file_DOI,
  save_paths,
  is_DOI_ID = FALSE,
  BASE_URL = Sys.getenv("BASE_URL"),
  API_TOKEN = Sys.getenv("API_TOKEN"),
  verbose = TRUE
)
}
\arguments{
\item{file_DOI}{A vector of character string of the DOI of files to be processed.}

\item{save_paths}{A vector of character string representing the local path where files should be saved.}

\item{is_DOI_ID}{If the dataset is not published yet, the DOI of the file does not exist, so \code{file_DOI} needs to be the file id of the database instead of a DOI. So if \code{TRUE}, \code{file_DOI} is \code{id} from the results of \code{\link[=list_datasets_files]{list_datasets_files()}}, elsewhere if \code{FALSE}, \code{file_DOI} is actual file DOI. Default, \code{FALSE}.}

\item{BASE_URL}{A character string for the base URL of the Dataverse API. By default, it uses the value from the environment variable \code{BASE_URL}.}

\item{API_TOKEN}{A character string for the API token required to authenticate the request. By default, it uses the value from the environment variable \code{API_TOKEN}.}

\item{verbose}{If FALSE, no processing informations are displayed. By default, TRUE.}
}
\description{
Download files based on their DOI.
}
\seealso{
\itemize{
\item \href{https://github.com/super-lou/dataverseuR}{dataverseuR GitHub documentation} \url{https://github.com/super-lou/dataverseuR}
\item \href{https://github.com/super-lou/dataverseuR_toolbox/blob/main/DRYvER/modify_README.R}{R example in context} \url{https://github.com/super-lou/dataverseuR_toolbox/blob/main/DRYvER/modify_README.R}
\item \href{https://guides.dataverse.org/en/5.3/api/native-api.html#accessing-downloading-files}{Native API documentation} \url{https://guides.dataverse.org/en/5.3/api/native-api.html#accessing-downloading-files}
}
}
