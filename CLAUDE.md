# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Running Scripts

Run an R script from the terminal:
```sh
Rscript first_file.R
Rscript barchart.R
```

Open an interactive R session:
```sh
R
```

## Dependencies

- `dplyr` — used in `first_file.R` for data manipulation with the built-in `starwars` dataset
- `ggplot2` — used in `barchart.R` for plotting with the built-in `mpg` dataset

Install missing packages inside R:
```r
install.packages(c("dplyr", "ggplot2"))
```

## Project Structure

This is a minimal, script-based R project (no `.Rproj` or `renv` setup yet). Scripts are standalone and use only base R datasets and tidyverse packages.

- `first_file.R` — loads the `starwars` dataset via dplyr
- `barchart.R` — produces a horizontal bar chart of average highway MPG by vehicle class using ggplot2
