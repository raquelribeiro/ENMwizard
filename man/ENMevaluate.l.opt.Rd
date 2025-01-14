% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3.f.tuning.R
\name{ENMevaluate.l.opt}
\alias{ENMevaluate.l.opt}
\title{Optimize the size of ENMevaluate.batch objects}
\usage{
ENMevaluate.l.opt(ENMeval.o.l)
}
\arguments{
\item{ENMeval.o.l}{List of objects of class ENMevaluation}
}
\description{
This function will set to NULL (erase) the largest slots ('predictions', 'models', 'occ.grp', and 'bg.grp')
of ENMeval::ENMevaluate objects. Only results, occ.pts, and bg.pts are returned.
Use with care. It will not be possible to check MaxEnte models, predictions and grouping of occ and bg points.
Can be used to optimize allocated RAM memory when 'ENMevaluate' objects are too large.
}
\seealso{
\code{\link{ENMevaluate.batch}}, \code{\link[ENMeval]{ENMevaluate}},
}
