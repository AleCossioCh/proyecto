require 'torosVacas.rb'
RSpec.describe TorosVacas do
    it 'devuelva el numero ingresado ' do
        juego=TorosVacas.new
        expect(juego.es_numero(1)).to eq('1')
    end
end