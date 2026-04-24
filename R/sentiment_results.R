sentiment_results<-function(counts) {
  #call the positive and negative counts
  positive <- counts$positive
  negative <- counts$negative
  #compare number of negative and positive words to get a final output
  sentiment <- if (positive > negative) {
    "This text is positive :)"
  } else if (negative > positive) {
    "This text is negative :("
  } else {
    "This text is neutral :I"
  }

  cat("Positive word count:", positive, "\n")
  cat("Negative word count:", negative, "\n")

  return(sentiment)
}
