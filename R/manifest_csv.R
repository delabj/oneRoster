#' Create the manifest file
#'
#'
#' @param manifest.version the version of the manifest Must initially be 1.0
#' @param oneroster.version Version number of one roster (currently must be 1.1)
#' @param path path to folder with to create manifest for
#' @param upload_type A upload must either be of type 'bulk' or 'delta'
#' @param source.systemName the name of the system producing the files
#' @param source.systemCode ID code of the system producing the files
#'
#' @return a tibble
#' @export
create_manifest <- function(
  manifest.version = "1.0",
  oneroster.version = "1.1",
  path = "~/",
  upload_type = "bulk",
  source.systemName = "package",
  source.systemCode = "NA"
){
  upload_type <- tolower(upload_type)

  # Warn if the oneRoster version is different than 1.1
  if (oneroster.version > "1.1") {
    warning("The most recent version of oneroster is version 1.1")
  }

  #check upload type
  if (!(upload_type %in% c("bulk", "delta"))) {
    stop("Invalid 'upload_type'. \n upload_type must be either 'bulk' or 'delta'")
  }

  df <- tibble::tribble(
    ~propertyName,          ~value,
    "manifest.version",      manifest.version,
    "oneroster.version",     oneroster.version,
    "file.academicSessions", manifest_file_check(path, "academicSessions.csv", upload_type),
    "file.categories",       manifest_file_check(path, "categories.csv", upload_type),
    "file.classes",          manifest_file_check(path, "classes.csv", upload_type),
    "file.classResources",   manifest_file_check(path, "classResources.csv", upload_type),
    "file.courses",          manifest_file_check(path, "courses.csv", upload_type),
    "file.courseResources",  manifest_file_check(path, "courseResources.csv", upload_type),
    "file.demographics",     manifest_file_check(path, "demographics.csv", upload_type),
    "file.enrollments",      manifest_file_check(path, "enrollments.csv", upload_type),
    "file.lineItems",        manifest_file_check(path, "lineItems.csv", upload_type),
    "file.orgs",             manifest_file_check(path, "orgs.csv", upload_type),
    "file.resources",        manifest_file_check(path, "resources.csv", upload_type),
    "file.results",          manifest_file_check(path, "results.csv", upload_type),
    "file.users",            manifest_file_check(path, "users.csv", upload_type),
    "source.systemName",     source.systemName,
    "source.systemCode",     source.systemCode


  )


return(df)
}


#' Check Files for Manifest
#'
#' @description An internal helper function to check files for creation of the manifest
#'
#' @param path path to file
#' @param file_name name of file to check for
#' @param upload_type the type of file upload
#'
#' @return the value for the manifest.
#' @keywords internal
manifest_file_check <- function(path, file_name, upload_type ) {

   if(file.exists(paste0(path,file_name))){
     return(upload_type)
   }
  else{
    return("absent")
  }

}
