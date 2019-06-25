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
      array = word.split("")
      consonants = []
      array.each_with_index do |letter, i|
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