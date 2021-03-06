% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.mjp.R
\name{read.mjp}
\alias{read.mjp}
\title{Read in a Data Set Encrypted with GPG, an MJP team defined function}
\usage{
read.mjp(file, tmp.path = path.expand("~/Documents/"))
}
\arguments{
\item{file}{Path to the data file encrypted with GNU Privacy Guard (GPG).  This currently works for CSV, SPSS, Stata, Rdata, and rds file types that have been ecrypted using GPG.}

\item{tmp.path}{Path to a directory where the data will be temporarily downloaded and decrypted.  WARNING -- This should not be a place on the cloud such as Dropbox; it should be a place on your local hard drive for security reasons.  The default is to create a temporary directory called "mjp.temp" in the user's Documents directory.  The user can specify a different directory in which to create the mjp.temp as a subdirectory.}
}
\value{
A data.frame of the data imported.
}
\description{
Read in a Data Set Encrypted with GPG, an MJP team defined function
}
\examples{
## IMPORT AN RDATA FILE TO DEFAULT TEMPORARY DIRECTORY
    mydata <- read.mjp(file="~/Documents/dataset.Rdata.gpg")

## IMPORT AN RDATA FILE TO A USER-SPECIFIED TEMPORARY DIRECTORY
    mydata <- read.mjp(file="~/Documents/dataset.Rdata.gpg", tmp.path="~/Data/")

}
