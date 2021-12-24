require './src/controller/wordController'

while true
    puts "Ingrese una palabra para calcular su posible valor maximo"
    WordController.findWordValue(gets.chomp)
end
