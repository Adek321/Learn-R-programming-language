### R SCRIPT: Complete Guide to Debugging in R

# 1. What is Debugging? (Layman's Explanation)
# Debugging is the process of finding and fixing errors (bugs) in your code.
# Think of it as detective work: when your code doesn't work as expected,
# you need to investigate what went wrong and correct it.
# 
# Common signs that you need debugging:
# - The script stops with an error message.
# - The results are incorrect or unexpected.
# - The script runs indefinitely without finishing.
# - You see warnings or messages that indicate potential issues.

# 2. Understanding Errors and Warnings
# Errors stop the execution of a script.
# Warnings do not stop execution but indicate potential issues.

# Example of an error (division by zero)
# result <- 10 / 0  # Uncomment to see an error

# Example of a warning
log(-1)  # Produces a warning since log of negative number is undefined

# 3. Checking Error Messages
# Use try() to capture errors without stopping execution
result <- try(log("text"))  # This will return an error object
print(result)

# 4. Debugging with print() and cat()
# Insert print() statements to track variable values
x <- 5
y <- 10
print(paste("Value of x:", x))
cat("Value of y:", y, "\n")

# 5. Using traceback() to Identify Error Source
# Run after an error to see the function call stack
# traceback()

# 6. Using debug() to Step Through Functions
# Example: Debugging a simple function
my_function <- function(a, b) {
  result <- a + b
  return(result)
}
debug(my_function)
my_function(2, 3)  # This will enter debug mode
undebug(my_function)  # Disable debugging

# 7. Using browser() for Interactive Debugging
buggy_function <- function(x) {
  browser()  # Execution will pause here for inspection
  y <- x^2
  return(y)
}
buggy_function(4)

# 8. Using tryCatch() for Error Handling
safe_divide <- function(a, b) {
  tryCatch({
    result <- a / b
    return(result)
  }, error = function(e) {
    message("Error: Division by zero or invalid input")
    return(NA)
  })
}
safe_divide(10, 0)

# 9. Using options(error = recover) for Advanced Debugging
# This allows inspecting the environment where the error occurred
# options(error = recover)
# stop("Triggering an error for demonstration")

# 10. Debugging in RStudio
# - Use the "Debug" menu to step through code.
# - Use breakpoints to pause execution.
# - Check the "Environment" and "Call Stack" panes.

# 11. Debugging for Data Analysts and Statisticians
# As a data analyst or statistician, debugging involves:
# - Checking data imports (e.g., missing values, incorrect formats).
# - Verifying transformations (e.g., filtering, aggregations, joins).
# - Ensuring statistical models are correctly specified.
# - Diagnosing unexpected results in data visualizations.

# Example: Debugging Missing Values in Data Analysis
library(dplyr)
data <- data.frame(ID = 1:5, Score = c(90, 85, NA, 78, 92))
print("Before handling missing values:")
print(data)

# Identify missing values
data %>% summarise_all(~sum(is.na(.)))

# Fix missing values
data_clean <- data %>% mutate(Score = ifelse(is.na(Score), mean(Score, na.rm = TRUE), Score))
print("After handling missing values:")
print(data_clean)

# Example: Debugging a Linear Model
model <- lm(mpg ~ hp, data = mtcars)
summary(model)

# Check model diagnostics
par(mfrow = c(2, 2))
plot(model)

# 12. Logging for Debugging
# Instead of printing messages, use logging for better debugging
library(logging)
basicConfig()
loginfo("This is an info message")
logerror("This is an error message")
