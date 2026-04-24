sentiment_counts <- function(words) {

  #A vector for 100 most common positive words, stems
  positive_words <- c(
    "good","great","best","better","excellent","amazing","awesome","fantastic","happy","happi",
    "love","lov","like","enjoy","enjoyabl","joy","joyful","wonderful","brilliant","positive",
    "pleased","proud","strong","success","successful","win","winner","won","beautiful","nice",
    "perfect","fine","calm","peace","peaceful","hope","hopeful","help","helpful","kind",
    "kindness","friendly","support","supportive","thank","thanks","thankful","relief","relieved",
    "excited","exciting","optimistic","bright","cheerful","delight","delighted","satisfi",
    "satisfied","content","glad","lucky","fortunate","encourag","encouraged","improv","improved",
    "progress","gain","growth","grow","active","activ","energ","energized","energy","motivat",
    "motivated","inspir","inspired","inspiring","achieve","achievement","accomplish","advance",
    "advanc","engag","engaged","clarity","clear","focus","focused","relax","relaxed","stable",
    "stability","safe","trust","trusting","trustworthy","respect","respected","care","caring",
    "warm","warmth","grace","graceful","serene","serenity","harmony","harmoni","balance","balanced",
    "victory","victor","uplift","uplifting","shine","shining","spark","sparkling","refresh","refreshed",
    "revive","revived","thrive","thriving","bless","blessed","reward","rewarding","progression",
    "improving","advance","advancement","skill","skilled","talent","talented","capable","ability",
    "brav","brave","courage","courageous","determined","determination","dedicat","dedicated",
    "loyal","loyalty","honest","honesty","faith","faithful","incredible","incredibl","extraordinary",
    "extraordinar","superb","spectacular","remarkable","outstand","outstanding"
  )

  # A vector for the 100 most common negative words
  negative_words <- c(
    "bad","wors","worst","terribl","awful","horribl","hate","hat","sad","sadd",
    "angr","anger","annoy","annoyed","frustrat","stress","stressed","stressful","tired","exhaust",
    "burnout","bore","boring","pain","painful","hurt","hurting","sick","ill","dizzy","fear",
    "fearful","panic","panick","anxiou","anxiety","worri","worrying","depress","depressed",
    "depression","lonel","alone","isol","isolat","loss","lost","fail","failed","failure",
    "problem","problems","troubl","issue","difficult","difficulty","hard","harsh","rough",
    "weak","weakness","danger","dangerous","threat","threaten","ugli","gross","disgust",
    "disgusting","negative","unhappi","sadness","hopeless","helpless","helplessness","damag",
    "damaged","destroy","destroyed","broken","break","crash","collaps","collapse","reject",
    "rejected","regret","suffer","suffering","miserabl","miserable","upset","upsetting",
    "cold","cruel","evil","toxic","ruin","ruined","declin","decline","losses","overwhelm",
    "overwhelmed","confus","confused","empti","empty","bother","bothered","lame","stupid",
    "useless","worthless","inferior","insecure","unstabl","mess","messy","chaos","chaotic",
    "drain","drained","nervou","tense","tension","painful","stressful","frustrating",
    "annoying","irritat","irritated","exhausted","exhausting","brokenhearted","hopelessness",
    "isolation","loneliness","fearful","worried","regretful","sadness","failure","failur",
    "collapse","damage","ruination"
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

