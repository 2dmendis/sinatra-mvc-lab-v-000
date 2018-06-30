require 'pry'
class PigLatinizer 
 
  
  def piglatinize(text)
    
    ending = "ay"
    @new_sentence = []
    @new_word = []
    @new_word_array = []
    
    textArray = text.split(" ") #split sentence into array
    
    textArray.map do |word| #for each word in the array
      @new_word.clear 
      @new_word_array.clear
      split_word = word.split(/([aeiou].*)/) #split that word at the first vowel
      
      split_word.map do |splitWord| 
        
        @new_word_array.unshift(splitWord) #first add in the concesents and then the vowels
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