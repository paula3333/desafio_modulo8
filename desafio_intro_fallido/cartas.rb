class Carta
    attr_accessor :numero, :pinta
    def initialize(numero,pinta) 
        @numero = numero
        @pinta = pinta
    end
    def cartas
        a=puts"#{@numero}#{@pinta}"
        return a
    end
end 
