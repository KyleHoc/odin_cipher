def ceasar_cipher (message, offset)
    cipher = []
    message = message.split('')
    message.each_with_index do |char, index|
        if (char.ord >= 65 && char.ord <= 90) || (char.ord >= 97 && char.ord <= 122)
            cipher[index] = conversion(char, offset)
        else
            cipher[index] = char
        end
    end
    cipher.join
end


def conversion (value, offset)
    value = value.ord + offset
    if (value > 90 && value < 96) || value > 122
        value = value - 26
    end
    return value.chr
end

puts ceasar_cipher("What a string!", 5)