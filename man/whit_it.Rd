% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/whit_it_function.R
\name{whit_it}
\alias{whit_it}
\title{Obtain whittaker biomes for sites based on their MAT and MAP}
\usage{
whit_it(data, mat, map)
}
\arguments{
\item{data}{Data frame with at least a column for MAT and a column for MAP.
Additional columns will be preserved.}

\item{mat}{Column. The column in data containing mean annual
temperature values in degrees Celsius.}

\item{map}{Column. The column in data containing mean annual
precipitation values in millimeters.}
}
\value{
The original data frame with a new column of Whittaker Biome
}
\description{
\code{whit_it} returns the Whittaker biome for each site in the provided
data frame, as long as it has an MAT (Mean annual temperature (c)) and
MAP (Mean annual precipitation (mm)).  Code swiped from guillembagaria's
ggbiome package which had a dependency on the obsolete RFc package that was
primarily there to estimate MAT and MAP based on lat/long parameters.
}
\examples{
# Create a data frame with climate parameters
sites <- data.frame(site = c("A", "B"), MAT = c(9.3, 18.2),
                    MAP = c(700, 1982))
#Get biome
whit_it(sites, mat = sites$MAT, map = sites$MAP)

}
