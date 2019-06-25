class PigLatinizer
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end
  
  def piglatinize(word)
    first_letter = word[0].downcase
    
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      word + "way"
    else
      consonants = []
      letter_array = word.split("")
      letter_array.each do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter)
          break
        else
          consonants << letter
        end
      end
      consonants
    end
  end
  
  def split_sentence(string)
    string.split(" ")
  end
end