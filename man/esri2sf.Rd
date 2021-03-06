% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/esri2sf.R
\name{esri2sf}
\alias{esri2sf}
\title{main function
This function is the interface to the user.}
\usage{
esri2sf(url, outFields = c("*"), where = "1=1", token = "", geomType = NULL)
}
\arguments{
\item{url}{string for service url. ex) \url{https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Demographics/ESRI_Census_USA/MapServer/3}}

\item{outFields}{vector of fields you want to include. default is '*' for all fields}

\item{where}{string for where condition. default is 1=1 for all rows}

\item{geomType}{string specifying the layer geometry ('esriGeometryPolygon' or 'esriGeometryPoint' or 'esriGeometryPolyline' - if NULL, will try to be infered from the server)}

\item{token.}{string for authentication token if needed.}
}
\value{
sf dataframe
}
\description{
main function
This function is the interface to the user.
}
\note{
When accessing services with multiple layers, the layer number must be specified at the end of the service url
(e.g., \url{https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Demographics/ESRI_Census_USA/MapServer/3}).

The list of layers and their respective id numbers can be found by viewing the service's url in a web broswer
and viewing the "Layers" heading
(e.g.,\url{https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Demographics/ESRI_Census_USA/MapServer/#mapLayerList}).
}
\examples{
url <- "https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Demographics/ESRI_Census_USA/MapServer/3"
outFields <- c("POP2007", "POP2000")
where <- "STATE_NAME = 'Michigan'"
df <- esri2sf(url, outFields=outFields, where=where)
plot(df)
}
