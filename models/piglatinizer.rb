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
      word.slice(consonants.length..-1) + consonants.join + "ay"
    end
  end
  
  def split_sentence(string)
    piglatinized = []
    string.split(" ").each do |word|
      piglatinized << piglatinize(word)
    end
    piglatinized.join(" ")
  end
end