#implement conditional statement using r if , if-else nested if-else and switch write a program to solve 

performance_score <- 85     # Used for if, if-else, and nested if-else
department_code <- "MKT"    # Used for switch statement ("HR", "IT", "MKT")


print("--- 1. Simple if Statement ---")
if (performance_score >= 80) {
  print("Status: Eligible for performance review.")
}

print("--- 2. if-else Statement ---")
if (performance_score >= 90) {
  print("Rating: Excellent Performance")
} else {
  print("Rating: Standard Performance")
}


print("--- 3. Nested if-else Statement ---")
if (performance_score >= 70) {
  print("Status: Passed minimum requirements.")
  
  # Inner if-else to determine tier level
  if (performance_score >= 85) {
    print("Tier: Gold Bonus Category")
  } else {
    print("Tier: Silver Bonus Category")
  }
  
} else {
  print("Status: Needs Improvement.")
  
  # Inner if-else for probation check
  if (performance_score < 50) {
    print("Action Required: Immediate Probation")
  } else {
    print("Action Required: Performance Improvement Plan (PIP)")
  }
}


print("--- 4. switch Statement ---")
department_name <- switch(
  department_code,
  "HR"  = "Human Resources Department",
  "IT"  = "Information Technology Department",
  "MKT" = "Marketing & Sales Department",
  "Unknown Department" # Default value if no match is found
)

print(paste("Assigned Department:", department_name))
