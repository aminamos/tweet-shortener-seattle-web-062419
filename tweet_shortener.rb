require 'pry'

def dictionary
  # first = ["hello","to","two","too","for","four","be","you","at","and"]
  # second = ["hi", "2","2","2","4","4","b","u","@","&"]
  # subs = Hash[first.zip(second)]
  
  {
    "hello" => "hi",
    "Hello" => "Hi"
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end


# this receives a string as an argument

def word_substituter(tweet) 
  # split the string into an array
  # iterate over the array
  nstring = ""
  nstring = tweet.split.collect  {|x| 
              if dictionary.keys.include?(x) == true
                # replace that index with the value
                dictionary[x]
              else
                x
              end
          }.join(" ")
  p nstring
end


def bulk_tweet_shortener(tweets)
   tweets.collect {|x|
   puts word_substituter(x)
    
  }
  
  
end
"I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys.4 real."

"I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. For real, u guys. For real."

