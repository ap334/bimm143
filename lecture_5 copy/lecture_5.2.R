#' ---
#' title: "Class 5:Data Visualization and Graphs in R"
#' author: "Anastasia Pimentel"
#' date: "January 22, 2020"
#' ---

# Lecture 5


# Data visualization and graphs in R
plot(1:10, col="blue", typ="o")

#bw=baby weight
bw <- read.table("bimm143_05_rstats/weight_chart.txt", header=TRUE)

#plotting weight vs age
plot(bw)

#plotting the age only
plot(bw$Age)

#plotting the weight only
plot(bw$Weight)

#fancy plot of age vs weight
plot(bw, typ="o", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (Months)", ylab="Weight (kg)", main="Weight vs Age of Newborns")

#making barplot of mouse data
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", sep="\t", header=TRUE)

#have to use par to adjust margins here. we'll have to restore the par to normal after this plot with par(mar=old.par)
par(mar=c(6, 13, 3, 3))
barplot(mouse$Count, horiz=TRUE, col="green", names.arg = mouse$Feature, las=1)
par(mar=c(5, 4, 2, 3))

#Plot of gender counts with rainbow colors
gender <- read.table("bimm143_05_rstats/male_female_counts.txt", sep="\t", header=TRUE)

barplot(gender$Count, names.arg = gender$Sample, horiz=FALSE,  ylab ="Count", las=2, col=rainbow(nrow(gender)))

# Plot of gender counts with catagorical colors
barplot(gender$Count, names.arg = gender$Sample, horiz=FALSE, ylab ="Count", las=2, col=c("blue", "lightblue"))

        