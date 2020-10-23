def letra_o(n)
    n.times do 
        print "*"
    end
    print "\n"
    (n-2).times do
        print "*"
        (n-2).times do
            print " "
        end
        print "*\n"
    end
    n.times do
        print "*"
    end
    print "\n"
end

def letra_i(n)
    n.times do
        print "*"
    end
    print "\n"
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
    n.times do
        print "*"
    end
    print "\n"
end

def letra_z(n)  #aqui quede :(
    n.times do
        print "*"
    end
    print "\n"

    (n-2).times do
    end


end

n = ARGV[0].to_i

letra_o(n)
letra_i(n)
letra_z(n)