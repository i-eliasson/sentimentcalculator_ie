sentiment_results<-function(counts) {
  #call the positive and negative counts
  positive <- counts$positive
  negative <- counts$negative
  #compare number of negative and positive words to get a final output
  sentiment <- if (positive > negative) {
    "positive"
  } else if (negative > positive) {
    "negative"
  } else {
    "neutral"
  }

  cat("Positive words:", positive, "\n")
  cat("Negative words:", negative, "\n")

  return(sentiment)
}
