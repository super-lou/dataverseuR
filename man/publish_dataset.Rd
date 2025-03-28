% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{publish_dataset}
\alias{publish_dataset}
\title{publish_dataset}
\usage{
publish_dataset(
  dataset_DOI,
  type = "major",
  BASE_URL = Sys.getenv("BASE_URL"),
  API_TOKEN = Sys.getenv("API_TOKEN")
)
}
\arguments{
\item{dataset_DOI}{A character string representing the DOI (Digital Object Identifier) of the dataset to be published.}

\item{type}{A character string specifying the type of publication. Options are "major" or "minor". Default is "major".}

\item{BASE_URL}{A character string representing the base URL of the Dataverse installation. Default is fetched from the \code{BASE_URL} environment variable.}

\item{API_TOKEN}{A character string representing the API token used for authentication. Default is fetched from the \code{API_TOKEN} environment variable.}
}
\value{
The function does not return any value. It prints messages indicating whether the dataset was successfully published or if an error occurred.
}
\description{
This function publishes a dataset in Dataverse using its DOI. The function sends a POST request to the Dataverse API, passing the DOI of the dataset and a specified type (e.g., major or minor) of publication. Upon success, it prints a success message, otherwise, it reports an error.
}
\examples{
# Publish a dataset with a specific DOI
publish_dataset("doi:10.1234/abcd")

# Publish a dataset with custom parameters
publish_dataset("doi:10.1234/abcd", type = "minor", BASE_URL = "https://dataverse.example.com", API_TOKEN = "your_api_token")
}
