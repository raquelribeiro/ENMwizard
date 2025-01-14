% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/8.f.metrics.R
\name{f.area.occ.mscn}
\alias{f.area.occ.mscn}
\title{Compute species' total suitable area}
\usage{
f.area.occ.mscn(mtp.l, restrict = NULL, digits = 0)
}
\arguments{
\item{mtp.l}{List of stack or brick of thresholded predictions}

\item{restrict}{a raster to select a region to compute area.}

\item{digits}{integer indicating the number of decimal places. see ?round for details.}
}
\value{
List of arrays containing species' total suitable areas for each climatic scenario, threshold and model criteria
}
\description{
Compute total suitable area for multiple climatic scenario, threshold and model criteria.
}
\examples{
areas.occ.lst <- f.area.occ.mscn(mtp.l=mods.thrshld.lst)
}
\seealso{
\code{\link[raster]{area}}, \code{\link{f.var.ci}}, \code{\link{f.OR}}, \code{\link{f.FPA}}, \code{\link{f.raster.overlap.mscn}}
}
