#' A R Package for One Roster Preparation
#' @docType package
#' @name oneRoster-Package
#'
#' @description One Roster is a standard developed by LMS Global allowing for ease of transfer of student data between
#' many educational systems. Creating a system of CSV compatible tables for ease of creation with Learning Management Systems (LMS),
#' Student Information Systems (SIS), and other learning platforms.
#'
#' Data files in CSV format are exchanged using a zip file and must be at the root level.
#'
#' @md
#' @details
#' The CSV files supported are as folows
#'
#' |       File Name      | Req |                                                                     Description                                                                    |
#'|--------------------|-----|--------------------------------------------------------------------------------------------------------------------------------------------------|
#'  | manifest.csv         | Yes | A control file. The manifest contains the version (set as 1.1) and the list of files that are supplied in this data set. A new file added in V1.1. |
#'  | academicSessions.csv |  No | A data file. The 'academic sessions' data model content. Data model revised in v1.1.                                                               |
#'  | categories.csv       |  No | A data file. The definition for a set of lineItems. A new file added in V1.1.                                                                      |
#'  | classResources.csv   |  No | A data file. The set of resources assigned to classes. A new file added in V1.1.                                                                   |
#'  | classes.csv          |  No | A data file. The 'classes' data model content. Data model revised in v1.1.                                                                         |
#'  | courseResources.csv  |  No | A data file. The set of resources assigned to courses. A new file added in V1.1.                                                                   |
#'  | courses.csv          |  No | A data file. The 'courses' data model content. Data model revised in v1.1.                                                                         |
#'  | demographics.csv     |  No | A data file. The 'demographics' data model content. Data model revised in v1.1.                                                                    |
#'  | enrollments.csv      |  No | A data file. The 'enrollments' data model content. Data model revised in v1.1.                                                                     |
#'  | lineItems.csv        |  No | A data file. The set of lineItems. A new file added in V1.1.                                                                                       |
#'  | orgs.csv             |  No | A data file. The' orgs' data model content.                                                                                                        |
#'  | results.csv          |  No | A data file. The set of results. A new file added in V1.1.                                                                                         |
#'  | resources.csv        |  No | A data file. The 'resources' data model content. A new file added in V1.1.                                                                         |
#'  | users.csv            |  No | A data file. The 'users' data model content. Data model revised in v1.1.                                                                           |
#'
#' A record in a file can be in 1 of 4 sates.
#' + **No Record**: The record has not been created or has been removed and cannot be recovered
#' + **Record\[-\]**: The record has been created and assigned a sourceID but is not yet active
#' + **Record\[Active\]**: The record status has been set to 'Active'
#' + **record\[ToBeDeleted\]**: The record status has been set to 'tobedeleted'
#'
#' For Each state there are four types of transition events
#' + **B\[-\]**: A bulk transfer has occurred and an existing record does not appear in the files.
#' + **B\[S\]**: A bulk transfer has occurred and the record occurs in the new file set.
#' + **D\[A\]**: A delta transfer has occurred and the record status is set as 'active'.
#' + **d\[D\]**: A delta transfer has occurred and the record status is set as 'tobedeleted'
#' @keywords internal
NULL
