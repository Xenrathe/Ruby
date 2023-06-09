# Cipher (shift)
class CaesarCipher
  def caesar_cipher(input_str, num_shift)
    # 'A' = 65; 'Z' = 90
    # 'a' = 97; 'z' = 122

    # Generally, a Caesarian cipher is meant to be human-codable
    # As such, we'll restrict ourself to alphabetic characters by 'looping' the shift
    # For example a '30' shift would be identical to a '4' shift
    num_shift = num_shift % 26
    shifted_string = ''

    input_str.split('').each do |char| 
      new_char_num = char.ord

      # Uppercase Situation
      if char.ord >= 65 && char.ord <= 90
        new_char_num = char.ord + num_shift;
        if new_char_num > 90
          new_char_num = 64 + (new_char_num - 90)
        elsif new_char_num < 65
          new_char_num = 91 + (new_char_num - 65)
        end
      end

      # Lowercase Situation
      if char.ord >= 97 && char.ord <= 122
        new_char_num = char.ord + num_shift
        if new_char_num > 122
          new_char_num = 96 + (new_char_num - 122)
        elsif new_char_num < 97
          new_char_num = 123 + (new_char_num - 97)
        end
      end

      shifted_string += new_char_num.chr
    end

    shifted_string
  end
end
