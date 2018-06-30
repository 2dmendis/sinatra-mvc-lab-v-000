require 'pry'
class PigLatinizer 
 attr_reader :text
  VOWELS = ["a","e","i","o","u"]
  
  def piglatinize(text)
    splitText = text.split("")
    if VOWELS.include?(splitText[0].downcase)
      piglatin = splitText << "way"
      final = piglatin.join("")
    end
  
    
    ending = "ay"
    @new_sentence = []
    @new_word = []
    @new_word_array = []
    text = text.downcase
    textArray = text.split(" ") #split sentence into array
    
    textArray.map do |word| #for each word in the array
      @new_word.clear 
      @new_word_array.clear
      split_word = word.split(/([aeiou].*)/) #split that word at the first vowel
      
      split_word.map do |splitWord| 
        
        @new_word_array.unshift(splitWord) #first add in the consonants and then the vowels at the zero position
      end 
     
      @new_word_array << ending #add the ending 'ay' to the array
      @new_word = @new_word_array.join("") #join the array to make the piglatin word
      @new_sentence << @new_word #push it into a new array to complete the sentence 
   
    end 
    @final_sentence = @new_sentence.join(" ") #join the array to make a string 
    @final_sentence
 
  end 
  
  def to_piglatin(words) 
    word = words.split(" ")
    latinized = word.map do |x|
      piglatinize(x)
    end 
    latinized.join(" ")
  end 
end 