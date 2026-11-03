# Built-in math, statistics, and string functions, user-defined functions,
# variable scope, and modular programming.

print("--- 1. Built-in mathematical functions ---")
value <- -16
print(paste("Absolute value:", abs(value)))
print(paste("Square root of 16:", sqrt(abs(value))))
print(paste("Rounded value of 12.678:", round(12.678, 2)))


print("--- 2. Built-in statistical functions ---")
scores <- c(72, 85, 91, 68, 88)
print(paste("Mean:", mean(scores)))
print(paste("Median:", median(scores)))
print(paste("Variance:", round(var(scores), 2)))
print(paste("Standard deviation:", round(sd(scores), 2)))


print("--- 3. Built-in string functions ---")
message_text <- "R programming is useful"
print(paste("Original:", message_text))
print(paste("Uppercase:", toupper(message_text)))
print(paste("Lowercase:", tolower(message_text)))
print(paste("Number of characters:", nchar(message_text)))
print(paste("Words:", length(strsplit(message_text, " ")[[1]])))


# Each function performs one focused task and returns a value.
calculate_average <- function(numbers) {
	return(mean(numbers))
}

calculate_bill <- function(price, quantity, tax_rate) {
	subtotal <- price * quantity
	total <- subtotal + (subtotal * tax_rate)
	return(total)
}

summarize_text <- function(text) {
	words <- strsplit(text, " ")[[1]]
	return(list(
		characters = nchar(text),
		words = length(words),
		uppercase = toupper(text)
	))
}


print("--- 4. User-defined functions with arguments and return values ---")
print(paste("Average score:", calculate_average(scores)))
print(paste("Total bill:", calculate_bill(250, 2, 0.18)))
text_summary <- summarize_text(message_text)
print(paste("Text characters:", text_summary$characters))
print(paste("Text words:", text_summary$words))
print(paste("Text uppercase:", text_summary$uppercase))


print("--- 5. Variable scope ---")
scope_value <- "Global value"

show_scope <- function() {
	scope_value <- "Local value"
	return(scope_value)
}

print(paste("Inside function:", show_scope()))
print(paste("Outside function:", scope_value))
