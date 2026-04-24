sentiment_counts <- function(words) {

  #A vector for 100 most common positive words
  positive_words <- c(
    "abundant","accomplish","achieve","achievement","active","admire","adore","advantage","amazing","angel","appealing",
    "appreciate","approval","astonishing","awesome","beautiful","beneficial","best","blessed","brilliant","calm",
    "celebrate","certain","charming","cheerful","clever","comfort","comfortable","confident","content","cool",
    "delight","delightful","determined","eager","easy","ecstatic","effective","efficient","enjoy","enjoyable",
    "enthusiastic","excellent","excited","excitement","exceptional","exhilarating","fantastic","fine","friendly",
    "fun","generous","gentle","glad","good","grace","grateful","great","happy","harmonious","healing","healthy",
    "helpful","honest","honor","hope","hopeful","impressive","improve","improved","incredible","inspiring",
    "intelligent","joy","joyful","kind","kindness","likable","loved","lovely","lucky","marvelous","motivated",
    "nice","optimistic","outstanding","peace","peaceful","perfect","pleasant","pleased","positive","powerful",
    "proactive","productive","proud","reliable","relieved","respected","satisfied","smart","strong","successful",
    "superb","supportive","terrific","thankful","thrilled","trust","trustworthy","uplifting","valuable","victory",
    "vibrant","wise","wonderful","worthy","yes"
  )

  # A vector for the 100 most common negative words
  negative_words <- c(
    "abandon","abandoned","abuse","angry","annoy","annoyed","annoying","anxious","apathy","awful",
    "bad","bitter","boring","broken","burden","chaos","cold","confused","corrupt","crash",
    "cruel","damage","damaged","danger","dangerous","depressed","depression","despair","desperate","destroy",
    "destroyed","difficult","disappoint","disappointed","disappointing","disaster","disgust","disgusting","dismal","doubt",
    "fail","failed","failure","fear","fearful","fierce","fright","frighten","frightened","frustrated",
    "frustration","gloomy","grim","gross","harsh","hate","hateful","helpless","horrible","horrific",
    "hurt","hurtful","ill","ignore","ignored","impossible","inadequate","inferior","injury","insane",
    "insult","insulting","irritate","irritated","lame","lazy","lonely","loss","lost","malicious",
    "mess","messy","negative","nervous","nightmare","noisy","nonsense","pain","painful","panic",
    "paranoid","poor","problem","problematic","reject","rejected","regret","risky","sad","sadness",
    "scary","sick","stress","stressed","terrible","tired","tragic","trouble","ugly","unhappy",
    "unpleasant","unrest","unsafe","useless","weak","worse","worst","worthless","worry","worrying"
  )
  #comparing the number of matching positive words with our text
  pos_count <- sum(words %in% positive_words)
  #comparing the number of matching negative words with our text
  neg_count <- sum(words %in% negative_words)

  return(list(
    positive = pos_count,
    negative = neg_count
  ))

}
