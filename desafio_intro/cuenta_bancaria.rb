class Usuario
    attr_accessor :nombre
    def initialize(nombre,cuentas)
        @nombre=nombre
        @cuentas=cuentas
    end
    def saldo_total
        #@cuentas.map{|cuenta| cuenta.saldo}.sum 
        @balance_total = 0
        @cuentas.each do |cuenta|
            @balance_total += cuenta.saldo
        end
        return @balance_total
    end
end
class CuentaBancaria
    attr_reader :banco, :numero_de_cuenta
    attr_accessor :saldo
    def initialize(banco,numero_de_cuenta,saldo=0)
        @banco=banco
        @numero_de_cuenta=numero_de_cuenta
        @saldo=saldo
    end
    def transferir(monto,otracuenta)
        self.saldo=self.saldo - monto
        otracuenta.saldo=otracuenta.saldo + monto
    end
end

cuenta1=CuentaBancaria.new('banco1',1234,5000)
cuenta2=CuentaBancaria.new('banco1',1234,5000)
cuenta1.transferir(5000,cuenta2)
puts cuenta1.saldo

usuario=Usuario.new('usuario1',[cuenta1,cuenta2])

puts usuario.saldo_total