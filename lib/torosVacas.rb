class TorosVacas
    def es_numero(num)
        return num.to_s == num.to_i.to_s
    end

    def revisar(respuesta,codigo)
        vacas=0
        toros=0
       
            if respuesta==codigo
              toros+=1
            end
        
        
        res=[toros,vacas]
        return res
      end

end