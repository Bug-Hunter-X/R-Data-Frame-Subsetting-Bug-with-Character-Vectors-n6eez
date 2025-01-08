```r
# This code demonstrates the correct way to subset a data frame
# based on character vector comparisons, using the `%in%` operator.

df <- data.frame(col1 = c("A", "B", "C", "A"), col2 = 1:4)

# Correct subsetting using %in%
result <- df[df$col1 %in% c("A"), ]
print(result)

# Handling multiple conditions correctly:
result2 <- df[df$col1 %in% c("A", "B"), ]
print(result2)

#Illustrates that == is not appropriate for multiple comparison
incorrect_result <- df[df$col1 == "A" | df$col1 == "B", ]
print(incorrect_result) #same as result2 but less efficient.
```