P <- read.csv("/Users/main/Downloads/NYC_Social_Media_Usage.csv")

Facebook <- P[P$Platform=="Facebook",]
Youtube <- P[P$Platform=="Youtube",]
hist(log10(Facebook$Likes.Followers.Visits.Downloads))
hist(Youtube$Likes.Followers.Visits.Downloads)

