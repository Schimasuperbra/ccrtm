% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flim.R
\name{flim}
\alias{flim}
\title{Forest Light Interaction Model (FLIM)}
\usage{
flim(Rc, Rg, To = NULL, Ts = NULL, params)
}
\arguments{
\item{Rc}{Canopy reflectance at infinite depth}

\item{Rg}{soil/background reflectance}

\item{To}{transmission in viewing direction}

\item{Ts}{transmission in sun direction}

\item{params}{a named vector of parameters:
\itemize{
\item \link{1} = stand density (d) (1)
\item \link{2} = crown diameter (cd) (1)
\item \link{3} = mean crown height (h)
\item \link{4} = leaf area index (lai) (2)
\item \link{5} = light extinction coefficient (alpha) (2)
\item \link{6} = Solar zenith angle (tts)
\item \link{7} = Observer zenith angle (tto)
\item \link{8} = Sun-sensor azimuth angle (psi)
}}

\item{area}{area of stand (m2)}
}
\value{
a list with reflectance, and the fractions of shaded
and sunexplosed crowns, shaded and sun exposed open space.
}
\description{
The FLIM model was first described by Rosema et al (1992).
In FLIM forests are assumed a discontinous mix of tree crowns
and gaps. Reflectance is modelled in terms of the
probabilty to observe either a gap (background)
or a tree crown. Both gaps and crowns may be shaded.
}
\details{
(1) Parameters are confounded (d & cd), confounded parameters pairs cannot be inversely
estimated, one of the pairs should be set to 1 - or given explicitly.
(2) required if T0, Ts are not given.
}
\examples{
parvec<- c(alpha = 0.5,lai=5,cd=15,h=30,d=10,tto=10,tts=20,psi=30)
flim(0.1,0.1,params=parvec)
   
}
\references{
Rosema, A., Verhoef, W., Noorbergen, H., Borgesius, J.J. (1992).
A new forest light interaction model in support of forest monitoring.
Remote Sens. Environ. 42, 23-41.
}
