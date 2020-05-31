require 'torosVacas.rb'
RSpec.describe TorosVacas do
    @@pruebas=TorosVacas.new
    it "devuelve true si el codigo ingresado es un numero" do
       
      expect(@@pruebas.es_numero(1)).to eq(true)
    end
      
    it "devuelve true si el codigo ingresado es un string" do  
      expect(@@pruebas.es_numero('1')).to eq(true)
    end
      
    it "devuelve true si el codigo ingresado es un cadena" do
      expect(@@pruebas.es_numero('1234')).to eq(true)
    end
    
    it "Devuelve 1 toro si el codigo es 1 y el intento es 1 " do
      expect(@@pruebas.revisar([1],[1])).to eq([1,0])
    end
    
    it "devuelve 1 vaca si el codigo es 5,7 y el intento 7,2 " do
        expect(@@pruebas.revisar([5,7],[7,2])).to eq([0,1])
    end

    it "devuelve 1 vaca y 1 toro si el codigo es 1,2,3 y el intento 3,2,4 " do
      expect(@@pruebas.revisar([1,2,3],[3,2,4])).to eq([1,1])
    end

    it "devuelve 4 toros si el codigo es 1,2,3,4 y el intento 1,2,3,4" do
      expect(@@pruebas.revisar([1,2,3,4],[1,2,3,4])).to eq([4,0])
    end

    it "devuelve el string 12 en arreglo [1,2] " do
      expect(@@pruebas.convertirStringArreglo("12")).to eq([1,2])
    end

    
  end


