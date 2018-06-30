require 'pry'
class PigLatinizer 
 
  
  def piglatinize(text)
    
    ending = "ay"
    @new_sentence = []
    @new_word = []
    @new_word_array = []
    
    textArray = text.split(" ")
    
    textArray.map do |word|
      @new_word.clear 
      @new_word_array.clear
      split_word = word.split(/([aeiou].*)/)
      
      split_word.map do |splitWord|
        
        @new_word_array.unshift(splitWord)
      end 
     
      @new_word_array << ending
      @new_word = @new_word_array.join
      @new_sentence.push(@new_word)
   puts @new_sentence
    end 
    @final_sentence = @new_sentence.join
    @final_sentence
    
  end 
end 