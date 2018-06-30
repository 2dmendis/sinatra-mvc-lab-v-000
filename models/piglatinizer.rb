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
        
        @new_word_array.unshift(splitWord) #first add in the consonants and then the vowels at the zero position
      end 
     
      @new_word_array << ending #add the ending 'ay' to the array
      
      @new_word = @new_word_array.join #join the array to make the piglatin word
     
      @new_sentence << @new_word #push it into a new array to complete the sentence 
   
    end 
    @final_sentence = @new_sentence.join #join the array to make a string 
    puts @final_sentence
    @final_sentence
    
  end 
end 