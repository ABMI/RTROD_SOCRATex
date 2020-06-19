#' databaseConnection function
#'
#' databaseConnection function is using DatabaseConnector package. The createConnectionDetails and connect functions are congested into a single function.
#'
#' @param server   server information of the database
#' @param user  user id of the database
#' @param password password of the database
#' @param schema  schema of the database want to access
#' @import DatabaseConnector
#'
#' @export
databaseConnection <- function(dbms, server, schema, user, password){
  connectionDetails <<- DatabaseConnector::createConnectionDetails(dbms=dbms
                                                                  , server=server
                                                                  , schema=schema
                                                                  , user=user
                                                                  , password=password)
  connection <<- DatabaseConnector::connect(connectionDetails)
}
