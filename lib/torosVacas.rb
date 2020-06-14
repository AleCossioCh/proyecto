class TorosVacas
    def tamanoCorrecto(cadena)
        return $dificultad==cadena.length()
     end
    def formatoCorrecto(cadena)
      return tamanoCorrecto(cadena)
    end
    def es_numero(num)
        return num.to_s == num.to_i.to_s
    end
    def sonIguales(numero,codigo)
      return numero==codigo
    end
    
    def revisar(respuesta,codigo)

        vacas=0
        toros=0
        for i in 0..codigo.length-1
            for y in 0..codigo.length-1
              if sonIguales(respuesta[i],codigo[y]) && sonIguales(i,y)
                toros+=1
              elsif sonIguales(respuesta[i],codigo[y])
                vacas+=1
              end
            end
        end
        res=[toros,vacas]
        return res
      end
      def convertirStringArreglo(cadenaString)
        resp=[]
        for i in 0..cadenaString.length-1
          resp.append(cadenaString[i])
        end
        return resp
      end
end

