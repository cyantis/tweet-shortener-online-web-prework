require 'pry'

def dictionary
  substitutes = {
  "hello" => "hi",
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

def word_substituter(string)
  string.split.collect do |w|
    if dictionary.has_key?(w)
      w = dictionary[w]
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(string)
  puts word_substituter(string)
end

def selective_tweet_shortener(string)
  string.length > 140 ? word_substituter(string) : string
end


def shortened_tweet_truncator(string)
  string.length > 140 ? "#{string[0...137]}..." : string
end

#word_substituter("Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!")
