% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sValues.R
\name{plot.sValues}
\alias{plot.sValues}
\title{Plot method for S-values}
\usage{
\method{plot}{sValues}(x, type = "t_s_plot", ...)
}
\arguments{
\item{x}{an object of class \code{\link{sValues}}.}

\item{type}{the type of the plot. Current options are \emph{t_s_plot} which returns
a scatterplot of s-values vs t-values for all coefficients and \emph{beta_plot} which returns
a plot of the different estimates for the coefficients.}

\item{...}{additional arguments to be passed to the plot functions. See details.}
}
\value{
It returns a \code{ggplot} object with the requested plot.
}
\description{
Plot methods for objects of the class \code{\link{sValues}}.
}
\details{
Additional arguments:

\code{t_s_plot} 
\itemize{
    \item \code{R2_bounds}: a numeric vector of length two specifying which R2 bounds range to plot.
}

\code{beta_plot}
\itemize{
    \item \code{variables}: a character vector specifying which variables to plot. Default is "all".
    \item \code{error_bar}: should the error bars be plotted? Default is \code{FALSE}.
    \item \code{ext_bounds_shades}: should shades representing the extreme bounds be plotted? Default is \code{FALSE}.
}
}
\examples{
# growth regressions example
data(economic_growth)
eg_sv <- sValues(GR6096 ~ ., data = economic_growth)
plot(eg_sv, R2_bounds = c(0.5, 1))
plot(eg_sv, R2_bounds = c(0.1, 1))
plot(eg_sv, type = "beta_plot", variable = "OPENDEC1", error_bar = FALSE)
plot(eg_sv, type = "beta_plot", variable = "OPENDEC1", error_bar = TRUE)

}
