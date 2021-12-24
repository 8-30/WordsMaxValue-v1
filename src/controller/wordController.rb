require './src/service/wordValueService'
module WordController
    def WordController.findWordValue(input_word)
        puts "su plabara es #{input_word} y su codigo maximo es: #{WordServiceValue.calculateWordMaxValue(input_word)}"
    end
end