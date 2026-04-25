#' Format text into a vector of words
#'
#' Reads a .txt file from the user's computer using a file selection dialog,
#' then cleans and converts the text into a vector of individual words.
#'
#' @return A character vector of words extracted from the file
#'
#' @examples
#' \dontrun{
#' string_vector <- format_text()
#' }
#'
format_text <- function() {
  #read file and convert text into dataframe, and suppress warning
  suppressWarnings(
  df <- read.delim(file.choose(), header=FALSE, sep=  "\t", stringsAsFactors = FALSE)
  )
  #make df into one single column
  df$text <- apply(df, 1, paste, collapse = " ")
  df <- data.frame(text = df$text)
  #make all words lowercase
  df$text <- tolower(df$text)
  #make all words into separate characters and remove all punctuation marks
  words <- unlist(strsplit(gsub("[[:punct:]]", "", tolower(df$text)), "\\s+"))
  words <- wordStem(words)
  return(words)
}
