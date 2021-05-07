

def average(num_1, num_2)
    
    return (num_1+num_2)/2.0

end


def average_array(arr)
    return arr.sum/(arr.length*1.0)
    #return arr.inject(){|acc,ele| acc+ele}/length

end


def repeat (str, num_val)
    newstr=""
    num_val.times do
        newstr+=str
    end
    newstr
end

def yell(str)
    return str.upcase+ "!"
end

def alternating_case(str)
    newstr= str.split(" ")
    #puts str[0]
    #puts newstr[0]
    (0...newstr.length).each do |i|
        #puts newstr
        if (i.even?)
            newstr[i].upcase! 
        elsif i.odd?
            newstr[i].downcase!
        end
    end

    newstr.join(" ")
end

p alternating_case("hEY PROGRAMMERS")
