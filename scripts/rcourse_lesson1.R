## LOAD PACKAGES ####
library(dplyr)
library(ggplot2)

## READ IN DATA AND ORGANIZE ####
# Read in data
data = read.table("data/rcourse_lesson1_data.txt", header = T, sep = "\t")

# Look at data
dim(data)
head(data)
tail(data)
xtabs(~group, data)

# Subset out bilinguals
data_bl = data %>%
  filter(group == "bilingual")

# Look at bilingual data
dim(data_bl)
head(data_bl)
tail(data_bl)
xtabs(~group, data_bl)
xtabs(~type, data_bl)

## MAKE FIGURES ####
# By group
data.plot = ggplot(data, aes(x = group, y = rt)) +
  geom_boxplot()
data.plot

## MAKE FIGURES ####
# By group
data.plot = ggplot(data, aes(x = group, y = rt)) +
  geom_boxplot()
pdf("figures/data.pdf")
data.plot
dev.off()
