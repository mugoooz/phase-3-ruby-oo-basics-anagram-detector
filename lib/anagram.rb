class Anagram
    attr_reader :word

    def initialize(word)
        @word = word.downcase
    end

    def match(possible_anagrams)
        possible_anagrams.select do |anagram|
            anagram.downcase.chars.sort == word.chars.sort
        end
    end
    
end