require './src/model/word'
MAX_LETTER_CODE=26
module WordServiceValue
    def WordServiceValue.calculateWordMaxValue (input_word)
        word=Word.new(input_word)
        letter_iterations = WordServiceValue.countWordLettersIterations(word.structure)
        multiplier = MAX_LETTER_CODE
        letter_iterations.each do |element|
            word.value = word.value + element*multiplier
            multiplier = multiplier - 1
        end
        return word.value
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