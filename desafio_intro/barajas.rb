
require_relative "cartas.rb"
class Baraja
    attr_accessor :cartas
    def initialize
        @cartas = []
        pinta = ['C','D','E','T']
        i=1
        13.times do |n|
            n1=n+1
            pinta.each do |tipo|
                @cartas.push(Carta.new(n1,tipo).cartas)
            end
        end
    end
end

baraja1 = Baraja.new

baraja1.cartas()

def retirar_carta(baraja)
    retirar_uno=baraja.cartas.shuffle.pop
    print retirar_uno
    return retirar_uno
end
prueba=retirar_carta(baraja1)


def seleccionar_cartas(n,baraja0)
    cartas_seleccionadas=[]
    n.times do |i|
        numero=52-i
        random=rand(1..numero)
        
        cartas_seleccionadas.push(baraja0[random.to_i])
        baraja0.cartas.shuffle
    end
    print cartas_seleccionadas 
end
repartir=seleccionar_cartas(5, baraja1)


#tratando de ingresar a github
