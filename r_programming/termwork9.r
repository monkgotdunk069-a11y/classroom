# Implement while, repeat, and break statements with numerical and logical problems.

print("--- 1. while loop: sum of natural numbers ---")
number <- 10
counter <- 1
sum_of_numbers <- 0

while (counter <= number) {
	sum_of_numbers <- sum_of_numbers + counter
	counter <- counter + 1
}

print(paste("Sum of numbers from 1 to", number, "is", sum_of_numbers))


print("--- 2. repeat loop and break: factorial ---")
factorial_number <- 5
factorial_result <- 1
factorial_counter <- 1

repeat {
	factorial_result <- factorial_result * factorial_counter
	factorial_counter <- factorial_counter + 1

	if (factorial_counter > factorial_number) {
		break
	}
}

print(paste(factorial_number, "! =", factorial_result))


print("--- 3. Logical problem: divisibility test ---")
value <- 24
is_even <- value %% 2 == 0
is_divisible_by_three <- value %% 3 == 0

if (is_even && is_divisible_by_three) {
	print(paste(value, "is divisible by both 2 and 3."))
} else if (is_even || is_divisible_by_three) {
	print(paste(value, "is divisible by either 2 or 3."))
} else {
	print(paste(value, "is not divisible by 2 or 3."))
}