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
      
    end
  end
  
  def split_sentence(string)
    string.split(" ")
  end
end