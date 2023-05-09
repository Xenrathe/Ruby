def caesar_cipher(inputStr, numShift)
  #'A' = 65; 'Z' = 90
  #'a' = 97; 'z' = 122

  #Generally, a Caesarian cipher is meant to be human-codable
  #As such, we'll restrict ourself to alphabetic characters by 'looping' the shift
  #For example a '30' shift would be identical to a '4' shift
  numShift = numShift % 26
  shiftedString = ""

  inputStr.split("").each do |char| 
    newCharNum = char.ord;

    #Uppercase Situation
    if (char.ord >= 65 and char.ord <= 90)
      newCharNum = char.ord + numShift;
      if (newCharNum > 90)
        newCharNum = 64 + (newCharNum - 90)
      elsif (newCharNum < 65)
        newCharNum = 91 + (newCharNum - 65)
      end
    end

    #Lowercase Situation
    if (char.ord >= 97 and char.ord <= 122)
      newCharNum = char.ord + numShift;
      if (newCharNum > 122)
        newCharNum = 96 + (newCharNum - 122)
      elsif (newCharNum < 97)
        newCharNum = 123 + (newCharNum - 97)
      end
    end

    shiftedString += newCharNum.chr
  end

  shiftedString
end

puts caesar_cipher(caesar_cipher("Hello people hi!", 50), -50)