library(sqldf)b
if (!('applications' %in% ls())){
  # applications <- read.csv('http://scott.thomaslevine.com/applications.csv')
  applications <- sqldf('SELECT "permitApplicationNumber", "projectDescription", "projectManagerName", "publicNoticeDate", "expirationDate", "publicNoticeUrl", "drawingsUrl", "parish", "longitude", "latitude", "acreage", "type" FROM application', dbname = applications.db)
}
