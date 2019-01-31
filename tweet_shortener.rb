require 'pry'

def dictionary
  substitutes = {
  "hello" => "hi",
  "to, two, too" => "2",
  "for, four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(string)
  arr = string.split(" ")
    arr.collect do |w|
      binding.pry
      dictionary.each do |long, short|
        w = short if w == long
      end
    end
  arr.join(" ")
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

word_substituter("Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!")
