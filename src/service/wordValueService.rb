require './src/model/word'
MAX_LETTER_CODE=26
module WordServiceValue
    def WordServiceValue.calculateWordMaxValue (word)
        letter_iterations = WordServiceValue.countWordLettersIterations(word)
        multiplier = MAX_LETTER_CODE
        word_value = 0
        letter_iterations.each do |element|
            word_value = word_value + element*multiplier
            multiplier = multiplier - 1
        end
        return word_value
    end
    def WordServiceValue.countWordLettersIterations(word)
        subword = word
        letter_iterations=[]
        while subword.length > 0
            letter_iterations.push(subword.count(subword[0]))
            subword = subword.gsub subword[0],""
        end
        return letter_iterations.sort!.reverse!
    end
end