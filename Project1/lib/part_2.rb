
def hipsterfy(str1)
    index= str1.length-1
    vowel="aieou".split("") 
    while index>0
        if vowel.include?(str1[index])
            newStr=str1[0,index]+str1[index+1,str1.length]
            return newStr
        end
        index-=1  
    end
    str1
end


def vowel_counts(str)
    vowel="aieou".split("")
    hash={}
    (0...str.length).each do |index|
        #puts index
        #puts hash
        #puts vowel.include?(str[index])
        letter= str[index].downcase
        if vowel.include?(letter)
            if hash.has_key?(letter)
                hash[letter]=hash[letter]+1
            else
                hash[letter]=1
            end
        end
    end
    hash
end


def caesar_cipher(str, num)
alpha= "abcdefghijklmnopqrstuvwxyz".split("")
str1=""
    (0...str.length).each do |ind|
        if (alpha.include?(str[ind]))
            str1=str1+ alpha[(alpha.index(str[ind])+num)%26]
        else
            str1=str1+str[ind]
        end
    end
    str1


end
