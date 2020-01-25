# various Hadley tricks

# Make error messages closer to base R
# https://github.com/hadley/adv-r/blob/a54903729dfa79fa79af5776218e6bc781e98c3d/common.R#L45-L64
registerS3method("wrap", "error", envir = asNamespace("knitr"),
                 function(x, options) {
                   msg <- conditionMessage(x)

                   call <- conditionCall(x)
                   if (is.null(call)) {
                     msg <- paste0("Error: ", msg)
                   } else {
                     msg <- paste0("Error in ", deparse(call)[[1]], ": ", msg)
                   }

                   msg <- error_wrap(msg)
                   knitr:::msg_wrap(msg, "error", options)
                 }
)

error_wrap <- function(x, width = getOption("width")) {
  lines <- strsplit(x, "\n", fixed = TRUE)[[1]]
  paste(strwrap(lines, width = width), collapse = "\n")
}

ruler <- function(width = getOption("width")) {
  x <- seq_len(width)
  y <- dplyr::case_when(
    x %% 10 == 0 ~ as.character((x %/% 10) %% 10),
    x %% 5 == 0  ~ "+",
    TRUE         ~ "-"
  )
  cat(y, "\n", sep = "")
  cat(x %% 10, "\n", sep = "")
}
