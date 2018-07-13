def word_substituter(tweet)
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "for" => "4",
  "four" => "4",
  "For" =>"4"
}
  i = 0 
  temp = tweet.split(" ")
  while i < temp.size do
    dictionary.each do |key, value|
      if temp[i] == key.downcase
        temp[i] = value
      end
    end
    i+= 1
  end
     tweet = temp.join(" ").to_s
     tweet
end

def bulk_tweet_shortener(tweets)
  dictionary = {
  "For" => "4",

  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "for" => "4",
  "four" => "4",

}
  i = 0
  while i < tweets.size 
    temp =  word_substituter(tweets[i])
    puts temp
    i += 1
  end
end
  