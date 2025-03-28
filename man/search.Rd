% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{search}
\alias{search}
\title{search}
\usage{
search(
  query = "*",
  publication_status = "*",
  type = "*",
  dataverse = "",
  n_search = "10",
  BASE_URL = Sys.getenv("BASE_URL"),
  API_TOKEN = Sys.getenv("API_TOKEN")
)
}
\arguments{
\item{query}{A character string specifying the search query. The default value is "*" which means a search for all datasets.}

\item{publication_status}{A character string specifying the publication status of the datasets. Valid options are "DRAFT", "RELEASED", or a specific status. The default is "*", meaning all statuses.}

\item{type}{A character string specifying the type of the dataset. The default is "*", meaning all types.}

\item{dataverse}{A character string specifying the dataverse to search within. If left empty, the search will query all available dataverses.}

\item{n_search}{A character string indicating the number of results to return. Default is "10".}

\item{BASE_URL}{A character string for the base URL of the Dataverse API. By default, it uses the value from the environment variable \code{BASE_URL}.}

\item{API_TOKEN}{A character string for the API token required to authenticate the request. By default, it uses the value from the environment variable \code{API_TOKEN}.}
}
\value{
A list of datasets returned from the Dataverse search query. If the API request fails, an error message is printed, and the function stops.
}
\description{
This function performs a search query on the Dataverse API. It allows users to search for datasets based on a query, publication status, type, and associated dataverse. The function returns datasets matching the search parameters, fetched via an API call to the Dataverse platform.
}
\details{
ChatGPT help (need to be tested) :

QUERY TYPE	     SYNTAX EXAMPLE                      DESCRIPTION
Basic Search	     query="climate"	                 Finds "climate" anywhere
Exact Phrase	     query='"climate change"'	         Finds the exact phrase
Wildcard (* & ?)  query="climat*" or query="cl?mate"	 Matches variations
Boolean Search    query="climate AND temperature"	 Combines terms
Field Search	     query="title:climate"	         Searches specific fields
Fuzzy Search	     query="climate~"	                 Finds similar words
Proximity Search  query='"climate temperature"~5'	 Finds nearby words
Regex (Limited)   query="climate*"                    Limited pattern matching
}
\examples{
# Perform a search for datasets with the default parameters
search()

# Perform a search for datasets in a specific dataverse with publication status 'RELEASED'
search(query="climate change", publication_status="RELEASED", dataverse="earth-sciences")

# Perform a search with custom results per page
search(n_search="20")
}
