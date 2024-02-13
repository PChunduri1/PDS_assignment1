# Read the CSV file into raw_yield_data
raw_yield_data <- read.csv("~/Downloads/Q1PDS.csv")
View (raw_yield_data)
cleaned_yield_data <- na.omit (raw_yield_data[raw_yield_data$Frailty !="NA",])
View (cleaned_yield_data)
# Load required packages
library(ggplot2)

# Plot Grip strength vs. Age with Frailty as a factor
ggplot(cleaned_yield_data, aes(x = Age, y = Gripstrength, color = Frailty)) +
  geom_point() +
  labs(x = "Age", y = "Grip Strength", color = "Frailty") +
  ggtitle("Grip Strength vs. Age with Frailty") +
  theme_minimal()
