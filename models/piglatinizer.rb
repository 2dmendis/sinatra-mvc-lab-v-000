require 'pry'
class PigLatinizer 
 attr_reader :text
  VOWELS = %w{a e i o u}
  
  def piglatinize(text)
    if VOWELS.include?(text[0].downcase)
      return text + "way"
    end
  
 
  end 
  
  def to_piglatin(words) 
    word = words.split(" ")
    latinized = word.map do |x|
      piglatinize(x)
    end 
    binding.pry
    latinized.join(" ")
  end 
end 