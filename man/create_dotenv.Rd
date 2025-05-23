% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{create_dotenv}
\alias{create_dotenv}
\title{create_dotenv}
\usage{
create_dotenv(dotenv_path = file.path(getwd(), "dist.env"), verbose = TRUE)
}
\arguments{
\item{dotenv_path}{A character string for the path of the .env file that will be created. By default, it create a file named \code{dist.env} in the working directory. This file should be rename \code{.env}.}

\item{verbose}{If FALSE, no processing informations are displayed. By default, TRUE.}
}
\value{
The function returns the path to the created .env file.
}
\description{
Create a default .env file necessary to fill in environment variables required for dataverse authentication.
}
\examples{
# Create the .env file to the working directory
create_dotenv()

# Create the .env file in a remote location with no informations displayed
create_dotenv("/path/to/dir/.env-demo", verbose=FALSE)
}
\seealso{
\itemize{
\item \href{https://github.com/super-lou/dataverseuR}{dataverseuR GitHub documentation} \url{https://github.com/super-lou/dataverseuR}
}
}
