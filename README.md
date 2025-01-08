# R Data Frame Subsetting Bug
This repository demonstrates a common but subtle bug in R related to subsetting data frames based on character vector comparisons.  The issue stems from the way R handles logical indexing when comparing character vectors using the `==` operator.

The `bug.R` file contains code that illustrates the incorrect subsetting, while `bugSolution.R` provides the corrected code using the `%in%` operator.  This is a more robust approach for character comparisons in subsetting, particularly when dealing with multiple values or potential inconsistencies in string formatting.