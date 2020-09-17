#' Files and their column names
#'
#' @description A list of all one roster files and their required case sensitive file names.
#'
#' @return a list of files with associated column names
#' @keywords internal
oneRoster_file_columns <- list(
  "academicsessions" = c("status", "dateLastModified", "title", "type", "startDate", "endDate", "parentSourceID", "schoolYear"),
  "categories"       = c("sourcedId", "status", "dateLastModified", "title"),
  "classes"          = c("sourcedId", "status", "dateLastModified", "title", "grades", "courseSourcedId", "classCode", "classType", "location", "schoolSourcedId", "termSourcedIds", "subjects", "subjectCodes", "periods"),
  "classResources"   = c("sourcedId", "status", "dateLastModified", "title", "classSourcedId", "resourceSourcedId"),
  "courseResources"  = c("sourcedId", "status", "dateLastModified", "title", "courseSourcedId", "resourceSourcedId"),
  "courses"          = c("sourcedId", "status", "dateLastModified", "schoolYearSourcedId", "title", "courseCode", "grades", "orgSourcedId", "subjects", "subjectCodes"),
  "demographics"     = c("sourcedId", "status", "dateLastModified", "birthDate", "sex", "americanIndianOrAlaskaNative", "asian", "blackOrAfricanAmerican", "nativeHawaiianOrOtherPacificIslander", "white", "demographicRaceTwoOrMoreRaces", "hispanicOrLatinoEthnicity", "countryOfBirthCode", "stateOfBirthAbbreviation", "cityOfBirth", "publicSchoolResidenceStatus"),
  "enrollments"      = c("sourcedId", "status", "dateLastModified", "classSourcedId", "schoolSourcedId", "userSourcedId", "role", "primary", "beginDate", "endDate"),
  "lineItems"        = c("sourcedId", "status", "dateLastModified", "title", "description", "assignDate", "dueDate", "classSourcedId", "categorySourcedId", "gradingPeriodSourcedId", "resultValueMin", "resultValueMax"),
  "orgs"             = c("sourcedId", "status", "dateLastModified", "name", "type", "identifier", "parentSourcedId"),
  "resources"        = c("sourcedId", "status", "dateLastModified", "vendorResourceId", "title", "roles", "importance", "vendorId", "applicationId"),
  "results"          = c("sourcedId", "status", "dateLastModified", "lineItemSourcedId", "studentSourcedId", "scoreStatus", "score", "scoreDate", "scoreDate"),
  "users"            = c("sourcedId", "status", "dateLastModified", "enabledUser", "orgSourcedIds", "role", "username", "userIds", "givenName", "familyName", "middleName", "identifier", "email", "sms", "phone", "agentSourcedIds", "grades", "password")
)



check_column_names <- function(data, file_type){
  file_type <- tolower(file_type)
  if(!(file_type %in% names(oneRoster_file_columns))){
    stop("'file_type' is an invalid entry")
  }

  if(unlist(oneRoster_file_columns[file_type]) == names(data)){
    return (TRUE)
  }

  return(FALSE)

}
#
