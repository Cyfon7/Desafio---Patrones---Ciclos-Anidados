def letra_o(n)
    #Linea Superior
    n.times do 
        print "*"
    end
    print "\n"

    #Lados de la 'O'
    (n-2).times do
        print "*"
        (n-2).times do
            print " "
        end
        print "*\n"
    end

    #Linea Inferior
    n.times do
        print "*"
    end
    print "\n"
end

def letra_i(n)
    #Linea Superior
    n.times do
        print "*"
    end
    print "\n"

    #Tallo de la 'I'
    (n-2).times do
        (n/2).times do
            print " "
        end
        print "*"
        (n/2).times do
            print " "
        end
        print "\n"
    end

    #Linea Inferior
    n.times do
        print "*"
    end
    print "\n"
end

def letra_z(n)
    #Linea Superior
    n.times do
        print "*"
    end
    print "\n"

    #Diagonal de la 'Z'
    z = n - 2
    (n - 2).times do
        z.times do
            print " "
        end
        print "*\n"
        z -= 1
    end

    #Linea Inferior
    n.times do
        print "*"
    end
    print "\n"
end

def letra_x(n)

    #Solo dibujara 'X' para numeros impares de lineas
    if (n.even?)
        n += 1
    end

    #Parte Superior
    linea_init = 0
    linea_final = n-1
    
    while ((linea_final - linea_init) > 1)
        linea = ""
        if (linea_init > 0)
            for i in (1..linea_init)
                linea += " "
            end
        end 
        linea += "*"
        for i in ((linea_init+1)..(linea_final-1))
            linea += " "
        end
        linea += "*"
        if (linea_final < (n-1))
            for i in (1..linea_init)
                linea += " "
            end
        end 
        puts linea
        linea_init += 1
        linea_final -= 1
    end

    #Parte Central
    linea = ""
    for i in (0..(linea_init-1))
        linea += " "
    end
    linea += "*"
    puts linea

    #Parte Inferior
    linea_init -= 1
    linea_final += 1

    until ((linea_final - linea_init) > n)
        linea = ""
        if (linea_init > 0)
            for i in (1..linea_init)
                linea += " "
            end
        end 
        linea += "*"
        for i in ((linea_init+1)..(linea_final-1))
            linea += " "
        end
        linea += "*"
        if (linea_final < (n-1))
            for i in (1..linea_init)
                linea += " "
            end
        end 
        puts linea
        linea_init -= 1
        linea_final += 1
    end
end

def numero_cero(n)
    #Linea superior
    n.times do 
        print "*"
    end
    print "\n"

    #Linea diagonal
    punto = 0
    (n-2).times do |i|
        linea = "*"           #Borde Izq 
        (n-2).times do |j|    #Linea Diagonal
            if (i == j)
                linea += "*"
            else
                linea += " "
            end
        end
        linea += "*"           #Borde Der
        puts linea
    end

    #linea inferior
    n.times do
        print "*"
    end
    print "\n"
end

def navidad(n)

    #Pino
    for i in (0..n-2)
        linea = ""
        for j in (i..n-2)
            linea += " "
        end

        for k in (0..i)
            linea += "* "
        end

        if (i == 0)
            patron_A = linea
        elsif (i == 2)
            patron_B = linea
        end
        puts linea
    end

    #Tronco del Arbol
    puts patron_A
    puts patron_A  
    puts patron_B
end


n = ARGV[0].to_i

letra_o(n)
print "\n\n"
letra_i(n)
print "\n\n"
letra_z(n)
print "\n\n"
letra_x(n)
print "\n\n"
numero_cero(n)
print "\n\n"
navidad(n)