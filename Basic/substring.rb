def substringsWholeWords(inputStr, dictionary)
  #Remove all punctuation and split
  splitStr = inputStr.gsub(/[^a-z0-9\s]/i, '').split(' ')
  splitStr.reduce(Hash.new(0)) do |count, word|
    if dictionary.include?(word.downcase)
      count[word] += 1
    end
    count
  end
end

def substrings(inputStr, dictionary)
  countHash = Hash.new(0)
  for startIndex in 0..inputStr.length
    for newLength in 1..(inputStr.length - startIndex)
      if dictionary.include?(inputStr[startIndex, newLength].downcase)
        countHash[inputStr[startIndex, newLength]] += 1
      end
    end
  end
  countHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
