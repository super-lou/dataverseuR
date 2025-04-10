% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{search_datasets}
\alias{search_datasets}
\title{search_datasets}
\usage{
search_datasets(
  query = "*",
  publication_status = "*",
  type = "dataset",
  dataverse = "",
  n_search = 10,
  BASE_URL = Sys.getenv("BASE_URL"),
  API_TOKEN = Sys.getenv("API_TOKEN")
)
}
\arguments{
\item{query}{A character string specifying the search query. The default value is \code{"*"} which means a search for all datasets.

More information on search formatting through an example:

QUERY TYPE         SYNTAX EXAMPLE                      DESCRIPTION
Basic Search         query="climate"                     Finds "climate" anywhere
Exact Phrase         query='"climate change"'             Finds the exact phrase
Wildcard (* & ?)  query="climat*" or query="cl?mate"     Matches variations
Boolean Search    query="climate AND temperature"     Combines terms
Field Search         query="title:climate"             Searches specific fields
Fuzzy Search         query="climate~"                     Finds similar words
Proximity Search  query='"climate temperature"~5'     Finds nearby words
Regex (Limited)   query="climate*"                    Limited pattern matching}

\item{publication_status}{A character string specifying the publication status of the datasets. Valid options are "DRAFT", "RELEASED". The default is \code{"*"}, meaning all statuses.}

\item{type}{A character string specifying the type of object to search between \code{"dataverse"}, \code{"dataset"}, or \code{"file"}. The default is \code{"dataset"} for searching only dataset.}

\item{dataverse}{A character string specifying the dataverse to search within. If left empty, the search will query all available dataverses in the \code{BASE_URL}.}

\item{n_search}{An integer indicating the maximum number of results to return. Default is 10.}

\item{BASE_URL}{A character string for the base URL of the Dataverse API. By default, it uses the value from the environment variable \code{BASE_URL}.}

\item{API_TOKEN}{A character string for the API token required to authenticate the request. By default, it uses the value from the environment variable \code{API_TOKEN}.}
}
\value{
A tibble of the restult of the search.
}
\description{
Performs a search query on the Dataverse API.
}
\examples{
\dontrun{
# A simple example to search all datasets from a dataverse
datasets = search_datasets(query="*",
                           publication_status="RELEASED",
                           type="dataset",
                           dataverse="riverly",
                           n_search=1000)

# A more difficult one with a complexe query 
query = '(title:"résultats*" OR title:"incertitudes*") NOT kindOfDataOther:"notice"'
datasets = search_datasets(query=query,
                           publication_status="RELEASED",
                           type="dataset",
                           dataverse="explore2",
                           n_search=1000)
}
}
\seealso{
\itemize{
\item \href{https://github.com/super-lou/dataverseuR}{dataverseuR GitHub documentation} \url{https://github.com/super-lou/dataverseuR}
\item \href{https://github.com/super-lou/dataverseuR_toolbox/blob/main/Explore2/post_hydrological_projection.R}{R example in context} \url{https://github.com/super-lou/dataverseuR_toolbox/blob/main/Explore2/post_hydrological_projection.R}
\item \href{https://guides.dataverse.org/en/5.3/api/search.html}{Search API documentation} \url{https://guides.dataverse.org/en/5.3/api/search.html}
}
}
