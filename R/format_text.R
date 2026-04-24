format_text <- function() {
  #read file and convert text into dataframe
  df <- read.delim(file.choose(), header=FALSE, sep=  "\t", stringsAsFactors = FALSE)
  #make df into one single column
  df$text <- apply(df, 1, paste, collapse = " ")
  df <- data.frame(text = df$text)
  #make all words lowercase
  df$text <- tolower(df$text)
  print(df)
  #make all words into separate characters
  words <- unlist(strsplit(gsub("[[:punct:]]", "", tolower(df$text)), "\\s+"))
  return(words)
}
