dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  word_counts = Hash.new 0

  dictionary.each do |word|
    word_counts[word] = words.scan(/#{word}/i).count
  end

  puts word_counts
end

substrings("Howdy partner, sit down! How's it going?", dictionary)