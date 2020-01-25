#+ eval = FALSE
fs::dir_info(path = raw_data_path,        # list xls[s] files
             regexp = "[.]xls[x]?$") %>%

  dplyr::mutate(sheets = purrr::map(      # create list-col of
    path, ~ readxl::excel_sheets)) %>%    # worksheets

  tidyr::unnest(sheets) %>%               # get one row per worksheet

  dplyr::mutate(data = purrr::map2(       # read data into a list-col
    path, sheets,                         # of data frames
    ~ readxl::read_excel(.x, .y) %>%      # call `as.character()`
      dplyr::mutate_all(as.character)     # on each column
  ))
#> New names:
#> * `` -> `..2`
#> * `` -> `..3`
#> * `` -> `..4`
#> * `` -> `..5`
#> * `` -> `..6`
#> Error: the ... list does not contain 3 elements

# https://github.com/tidyverse/dplyr/issues/4094

#+ after, eval = FALSE
df <- data.frame(`..1` = 1)

dplyr::mutate_all(df, as.character)
#> Error in mutate_impl(.data, dots) :
#>   Evaluation error: ..1 used in an incorrect context, no ... to look in.
