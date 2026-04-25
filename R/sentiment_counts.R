#' Count positive and negative words in text
#'
#' Calculates how many words in a cleaned text vector match
#' predefined positive and negative sentiment lexicons.
#'
#' @param words A character vector of words created using format_text()
#'
#' @return A list containing the number of positive and negative words
#'
#' @examples
#' \dontrun{
#' pos_neg_count <- sentiment_counts(string_vector)
#' }

sentiment_counts <- function(words) {

  #A vector for 100 most common positive words, with word stems
  positive_words <- positive_words <- c(
    "good","great","excel","amaz","awesom","fantast","wonder","brilliant","superb","outstand",
    "perfect","nice","pleasant","love","beauti","charm","delight","enjoy","fun","happi",
    "joy","cheer","glad","content","satisfi","pleas","grate","thank","optimist","hope",
    "posit","encourag","inspir","motivat","uplift","excit","thrill","impress","remark","incred",
    "success","effect","effici","product","benefici","valu","use","help","support","reliabl",
    "trust","honest","loyal","kind","friend","generous","care","compassion","warm","welcom",
    "peace","calm","relax","comfort","safe","secur","stabl","balanc","harmoni","bright",
    "clear","focus","confid","strong","capabl","skill","talent","creativ","smart","intellig",
    "wise","determin","dedic","ambit","driven","energet","activ","live","vibrant","refresh",
    "reward","fulfil","meaning","fortun","lucki","bless","grace","eleg","radiant","shine"
  )

  #A vector for the 100 most common negative words, with word stems
  negative_words <- c(
    "bad","wors","worst","awful","terribl","horribl","poor","negat","unpleasant","disappoint",
    "sad","angr","upset","depress","unhappi","miser","lonel","hopeless","helpless","worri",
    "anxiou","nervou","afraid","scare","fear","stress","overwhelm","tire","exhaust","drain",
    "frustrat","annoy","irritat","bore","confus","lost","insecure","uncertain","doubt","pessimist",
    "hate","dislik","resent","bitter","jealous","enviou","hostil","rude","mean","cruel",
    "selfish","greedi","lazi","careless","reckless","weak","useless","worthless","inferior","inadequ",
    "fail","broken","damag","ruin","destroy","problem","troubl","issu",
    "difficult","hard","challeng","pain","harm","danger","risk","unsafe","toxic",
    "dirt","mess","chaos","noisi","dull","slow","late","wrong","fault",
    "ugli","gross","disgust","offens","unfair","unjust","unlucki","unfortun","regret","guilt"
  )


  #comparing the number of matching positive words with the character vector from the input
  pos_count <- sum(words %in% positive_words)
  #comparing the number of matching negative words with the character vector from the input
  neg_count <- sum(words %in% negative_words)

  return(list(
    positive = pos_count,
    negative = neg_count
  ))
}
