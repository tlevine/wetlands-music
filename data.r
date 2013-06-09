library(sqldf)
if (!('applications' %in% ls())){
  # applications <- read.csv('http://scott.thomaslevine.com/applications.csv')
  applications <- sqldf(
    'SELECT "permitApplicationNumber", "projectDescription", "projectManagerName", "publicNoticeDate", "expirationDate", "publicNoticeUrl", "drawingsUrl", "parish", "longitude", "latitude", "acreage", "type" FROM application',
    dbname = 'applications.db',
    method = c('character', 'character', 'factor', 'Date2', 'Date2', 'character', 'character', 'factor', 'numeric', 'numeric', 'numeric', 'factor'),
  )
}
