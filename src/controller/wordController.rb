require './src/service/wordValueService'
module WordController
    def WordController.findWordValue(word)
        puts "su plabara es #{word} y su codigo maximo es: #{WordServiceValue.calculateWordMaxValue(word)}"
    end
end