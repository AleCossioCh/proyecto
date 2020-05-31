require 'torosVacas.rb'
RSpec.describe TorosVacas do
    it "devuelve true si el codigo ingresado es un numero" do
        pruebas=TorosVacas.new
        expect(pruebas.es_numero(1)).to eq(true)
      end
      it "devuelve true si el codigo ingresado es un string" do
        pruebas=TorosVacas.new
        expect(pruebas.es_numero('1')).to eq(true)
      end
      it "devuelve true si el codigo ingresado es un cadena" do
        pruebas=TorosVacas.new
        expect(pruebas.es_numero('1234')).to eq(true)
      end
    
    it "Devuelve 1 toro si el codigo es 1 y el intento es 1 " do
      pruebas=TorosVacas.new
      expect(pruebas.revisar(1,1)).to eq([1,0])
    end
end