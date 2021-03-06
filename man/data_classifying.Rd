% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_ML.R
\name{data_classifying}
\alias{data_classifying}
\title{Predicting product COICOP levels via the machine learning model}
\usage{
data_classifying(model = list(), data)
}
\arguments{
\item{model}{A list of 8 elements which identify the previously built machine learning model (the list is obtained via the \code{model_classification} function).}

\item{data}{A data set for the model (products with their characteristics). This data set must contain all the columns which were used in the built model.}
}
\value{
This function provides the indicated data set with an additional column, i.e. \code{coicop_predicted}, which is obtained by using the selected machine learning model.
}
\description{
This function predicts product COICOP levels via the selected machine learning model.
}
\examples{
#Building the model
\donttest{my.grid=list(eta=c(0.01,0.02,0.05),subsample=c(0.5))}
\donttest{data_train<-dplyr::filter(dataCOICOP,dataCOICOP$time<=as.Date("2020-08-01"))}
\donttest{data_test<-dplyr::filter(dataCOICOP,dataCOICOP$time>as.Date("2020-08-01"))}
\donttest{ML<-model_classification(data_train,data_test,grid=my.grid,
indicators=c("prodID","unit","description"),key_words=c("milk"),rounds=50)}
#Data classification
\donttest{data_classifying(ML, data_test)}
}
