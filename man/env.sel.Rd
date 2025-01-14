% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1.2b.f.SelEnvVar.R
\name{env.sel}
\alias{env.sel}
\title{Find, optionally remove, highly correlated variables from raster brick/stack}
\usage{
env.sel(env = NULL, corr_matrix = NULL, cutoff = 0.9,
  names.only = F, plot.dend = T, rm.old = F, sp.nm = "sp",
  filename = NULL)
}
\arguments{
\item{env}{raster brick/stack}

\item{corr_matrix}{Correlation matrix from which variables will be selected. If the correlation
matrix was already computed from env, you can just input here and choose other cutoff values for
selecting variable layers.}

\item{cutoff}{A numeric value for the pair-wise absolute correlation cutoff}

\item{names.only}{Logical. Return only the names of selected variables (T) or return
the raster brick containing the least correlated variables (F).}

\item{plot.dend}{Logical. Plot dendrogram of correlation distance between variables,
showing cutoff limit and selected (black) and discarded (red) variables}

\item{rm.old}{Logical. Remove (T) old env variables from folder?}

\item{sp.nm}{Species name. Used to name the output folder}

\item{filename}{Output filename}
}
\description{
This function creates a correlation matrix for the layers of a raster brick/stack
and returns a brick containing the least correlated variables below the cutoff value.
}
\details{
This function creates a correlation matrix for the layers of a raster brick/stack using
raster::layerStats function.
Then, through caret::findCorrelation function, it searches the correlation matrix
for pair-wise correlations above the cutoff value and, for each pair of correlated variables,
it removes the variable with the largest mean absolute correlation. At the end it returns
a raster brick containing only the least correlated variables with correlation below the cutoff
value.
}
