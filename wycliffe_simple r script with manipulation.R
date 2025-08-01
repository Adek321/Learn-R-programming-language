# Number of students
num_students <- 30

# Create the dataframe
df <- data.frame(matrix(ncol = 7, nrow = num_students))
colnames(df) <- c("Name", "Age", "Accidents", "Survived", "Dead", "Treated", "Gender")

# Generate random names
install.packages("randomNames")
library(randomNames)
df$Name <- randomNames(num_students)

# Generate ages between 4 and 60
df$Age <- sample(4:60, num_students, replace = TRUE)

# Generate number of accidents (example: 0 to 5)
df$Accidents <- sample(0:5, num_students, replace = TRUE)

# Generate Survived (TRUE/FALSE)
df$Survived <- sample(c(TRUE, FALSE), num_students, replace = TRUE)

# Generate Dead (TRUE/FALSE, considering Survived)
df$Dead <- ifelse(df$Survived, FALSE, sample(c(TRUE, FALSE), sum(!df$Survived), replace = TRUE))

# Generate Treated (yes/no)
df$Treated <- sample(c("yes", "no"), num_students, replace = TRUE)

# Generate Gender (male/female)
df$Gender <- sample(c("male", "female"), num_students, replace = TRUE)

# Print the dataframe
print(df)

# Summary of the dataframe
summary(df)
write.csv(df)
View(df)
print(df)
# Optional: Save to a CSV file
# write.csv(df, "student_data.csv", row.names = FALSE)

# Replace "male" with 1 and "female" with 0 in the Gender column
df$Gender <- ifelse(df$Gender == "male", 1, 0) 
#Now this is the best practice to store gender as text not numberic not unless for analysis purposes
# Convert Gender to character type (important for text labels)
df$Gender <- as.character(df$Gender)
# Replace 1 with "Male" and 0 with "Female" in the Gender column
df$Gender <- ifelse(df$Gender == "1", "Male", "Female")

# Print the updated dataframe (optional)
print(df)

# Optional: Save to a CSV file
# write.csv(df, "student_data_text_gender.csv", row.names = FALSE)

# Print the updated dataframe (optional)
print(df)

# Summary of the updated dataframe (optional)
summary(df)

# Optional: Save to a CSV file
# write.csv(df, "student_data_numeric_gender.csv", row.names = FALSE)

# Format the Age column to two digits with leading zeros
df$Age <- sprintf("%02d", df$Age)

# Print the updated dataframe (optional)
print(df)

# Summary of the updated dataframe (optional)
summary(df)

# Optional: Save to a CSV file
# write.csv(df, "student_data_two_digit_age.csv", row.names = FALSE)
rm(list=ls())#clears the environment
#cntrl+L clears the console

set.seed(123)  # Set a seed for reproducibility
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-12-31")
df$Date_Taken <- sample(seq(from = start_date, to = end_date, by = "day"), num_students, replace = TRUE)
print(df)
# Change the format of the Date_Taken column
df$Date_Taken <- format(df$Date_Taken, "%d-%m-%Y")
# Ensure the Date_Taken column is in Date format
df$Date_Taken <- as.Date(df$Date_Taken)

# Now apply the desired format
df$Date_Taken <- format(df$Date_Taken, "%Y/%m/%d")
df$Date_Taken <- as.Date(df$Date_Taken, format = "%d-%m-%Y")

# View the updated dataframe
head(df)

