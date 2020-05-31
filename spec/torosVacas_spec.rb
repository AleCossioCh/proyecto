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
      
    
end