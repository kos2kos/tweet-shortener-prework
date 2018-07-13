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
}
  i = 0 
  temp = tweet.split(" ")
  while i < temp.size do
    dictionary.each do |key, value|
      if temp[i].downcase == key
        temp[i] = value
      end
    end
    i+= 1
  end
     tweet = temp.join(" ").to_s
     tweet
end

def bulk_tweet_shortener(tweets)
  i = 0
  while i < tweets.size 
    temp =  word_substituter(tweets[i])
    puts temp
    i += 1
  end
end

def selective_tweet_shortener(tweets)
    if tweets.size > 140
      tweet = bulk_tweet_shortener(tweets)
    end
      tweet
  end

def shortened_tweet_truncator(tweets)
  tweets.each do |tweet|
    if tweet.size > 140
      tweet = bulk_tweet_shortener(tweet[0..139])
    end
  end
  tweets
end
  