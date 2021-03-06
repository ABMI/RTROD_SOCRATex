% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/noteExtract.R
\name{noteExtract}
\alias{noteExtract}
\title{noteExtract}
\usage{
noteExtract(Text, num, date, noteType)
}
\arguments{
\item{Text}{text data from Preprocessing step}

\item{num}{The number of clinical reports want to extract}

\item{date}{The note dates of the reports. It should contain the min date and max date.}

\item{noteType}{The note type concept ids of the NOTE table. It uses the standardized concepts of OMOP CDM}
}
\description{
This function extracts NOTE data from CSV upload data. The CSV data need to be OMOP CDM NOTE table format.
}
