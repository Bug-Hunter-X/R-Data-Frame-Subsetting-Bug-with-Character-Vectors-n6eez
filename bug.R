```r
# This code attempts to subset a data frame based on a condition,
# but it produces unexpected results due to how R handles logical
# indexing with character vectors.

df <- data.frame(col1 = c("A", "B", "C", "A"), col2 = 1:4)

# Incorrect subsetting
result <- df[df$col1 == "A", ]
print(result)

# Correct subsetting, using the `%in%` operator for character comparisons.
correct_result <- df[df$col1 %in% c("A"), ]
print(correct_result)
```