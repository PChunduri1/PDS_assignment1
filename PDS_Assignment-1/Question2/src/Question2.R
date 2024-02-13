# Load the data from the provided link
raw_data <- read.csv("~/Downloads/StudentsPerformance.csv")

# Explore the structure and summary of the dataset
str(raw_data)
summary(raw_data)

# Generate alternative plots
# 1. Boxplot of Math Scores by Gender
boxplot(math.score ~ gender, data = raw_data, 
        xlab = "Gender", ylab = "Math Score",
        main = "Boxplot of Math Scores by Gender")

# 2. Scatterplot of Reading Scores vs. Writing Scores
plot(raw_data$reading.score, raw_data$writing.score, 
     xlab = "Reading Score", ylab = "Writing Score",
     main = "Scatterplot of Reading vs. Writing Scores")

# 3. Barplot of Math Scores by Ethnicity
barplot(table(raw_data$race.ethnicity, raw_data$math.score),
        beside = TRUE, legend.text = TRUE,
        xlab = "Race/Ethnicity", ylab = "Frequency",
        main = "Barplot of Math Scores by Ethnicity")

# 4: Distribution of Race/Ethnicity with Math Score > 80
p4 <- data %>%
  filter(math.score > 80) %>%
  ggplot(aes(x = race.ethnicity, fill = race.ethnicity)) +
  geom_bar() +
  labs(title = "Distribution of Race/Ethnicity with Math Score > 80")

# 5. Density Plot of Writing Scores
densityPlot <- ggplot(raw_data, aes(x = writing.score)) +
  geom_density(fill = "skyblue", color = "blue") +
  labs(title = "Density Plot of Writing Scores", x = "Writing Score", y = "Density")

# Display all the plots
par(mfrow = c(2, 2)) # Set the layout for multiple plots
print(boxplot(math.score ~ gender, data = raw_data, 
              xlab = "Gender", ylab = "Math Score",
              main = "Boxplot of Math Scores by Gender"))
print(plot(raw_data$reading.score, raw_data$writing.score, 
           xlab = "Reading Score", ylab = "Writing Score",
           main = "Scatterplot of Reading vs. Writing Scores"))
print(barplot(table(raw_data$race.ethnicity, raw_data$math.score),
              beside = TRUE, legend.text = TRUE,
              xlab = "Race/Ethnicity", ylab = "Frequency",
              main = "Barplot of Math Scores by Ethnicity"))
print(densityPlot)
print(p3)
