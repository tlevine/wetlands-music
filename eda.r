library(ggplot2)

applications$responseDays <- as.numeric(applications$expirationDate - applications$publicNoticeDate)
print(subset(applications, responseDays >= 100))
p.1 <- ggplot(subset(applications, responseDays < 100)) +
# aes(x = publicNoticeDate, y = responseDays, color = type, label = projectDescription) +
  aes(y = publicNoticeDate, x = responseDays, color = type, label = permitApplicationNumber) +
  scale_x_log10('Days available to respond') +
  scale_y_date('Public notice date') +
  labs(title = 'How long does the public have to respond to 404 permits?') +
  geom_text()

applications$publicNoticeWeek <- strftime(applications$publicNoticeDate, format = '%Y-%U')
p.2 <- ggplot(applications) +
  aes(x = publicNoticeWeek) +
  labs(x = 'Year and Week', y = 'Number of public notices') +
  geom_bar()
