# Open this in RStudio (Files pane -> hello.R) and click "Source",
# or run in a terminal:  Rscript hello.R
greet <- function(name) {
  paste0("Hello, ", name, " - from R inside a container!")
}

cat(greet("workshop"), "\n")
cat("R version:", R.version.string, "\n")

# renv is pre-installed; this is the R virtual-environment tool we'll demo.
cat("renv installed:", requireNamespace("renv", quietly = TRUE), "\n")
