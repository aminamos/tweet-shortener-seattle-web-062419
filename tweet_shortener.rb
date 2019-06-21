require 'pry'

def dictionary
  # first = ["hello","to","two","too","for","four","be","you","at","and"]
  # second = ["hi", "2","2","2","4","4","b","u","@","&"]
  # subs = Hash[first.zip(second)]
  
  {
    hello: "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
  }

end


# this receives a string as an argument

def word_substituter(tweet) 
  # split the string into an array
  # iterate over the array
  tweet.split.each do |x|
    
    # if the value in the current index
    # matches any dictionary key
    binding.pry
      if x.include?(dictionary.keys) == true
        # replace that index with the value
        tweet[x] = dictionary[value]
      end
  end
end
binding.pry

def bulk_tweet_shortener(tweets)
  
  
  
end