class PigLatinizer
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end
  
  def piglatinize(word)
    first_letter = word[0].downcase
    
    if first_letter == (/aeiou/)
  end
  
  def split_sentence(string)
    string.split(" ")
  end
end