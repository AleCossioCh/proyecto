class TorosVacas
    def es_numero(num)
        return num.to_s == num.to_i.to_s
    end
    def revisar(respuesta,codigo)

        vacas=0
        toros=0
        for i in 0..codigo.length-1
            for y in 0..codigo.length-1
              if respuesta[i]==codigo[y] && i==y
                toros+=1
              elsif respuesta[i]==codigo[y]
                vacas+=1
              end
            end
        end
        res=[toros,vacas]
        return res
      end
      def convertirStringArrreglo(cadenaString)
        resp=[]
        for i in 0..cadenaString.length-1
          resp.append(cadenaString[i].to_i)
        end
        return resp
      end
end

