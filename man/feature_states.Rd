% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_spatial.R
\name{feature_states}
\alias{feature_states}
\title{get the states that features overlap with}
\usage{
feature_states(sp)
}
\arguments{
\item{sp}{an object of class \code{Spatial}}
}
\value{
a list with \code{states} field
}
\description{
summarize the spatial extent of data relative to overlap w/ US states
}
\examples{
library(sp)
p = SpatialPoints(cbind(-89,42), proj4string=CRS("+proj=longlat +datum=WGS84"))
feature_states(p)

Sr1 = Polygon(cbind(c(-89,-89.5,-89,-88.5,-89),c(42,42,44,44,42)))
Srs1 = Polygons(list(Sr1), "s1")
p = SpatialPolygons(list(Srs1), proj4string=CRS("+proj=longlat +datum=WGS84"))
feature_states(p)
}
