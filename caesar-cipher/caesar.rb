def which_case(letter)
    case letter
    when /[[:upper:]]/ then return 'u'
    when /[[:lower:]]/ then return 'l'
    else return 'other'
    end
end

def caesar_cipher(string, shift_factor)
    upper_table = {}
    lower_table = {}
    (('A'..'Z').zip(1..26)).each { |x| upper_table[x[0]] = x[1] }
    (('a'..'z').zip(1..26)).each { |x| lower_table[x[0]] = x[1] }
    char_table = string.chars
    complete_table = []
    for i in char_table do
        check = which_case(i)
        if check == 'u'
            i_change = upper_table[i] + shift_factor
            if i_change > 26
                i_change -= 26
            end
            complete_table.push(upper_table.key(i_change))
        elsif check == 'l'
            i_change = lower_table[i] + shift_factor
            if i_change > 26
                i_change -= 26
            end
            complete_table.push(lower_table.key(i_change))
        elsif check == 'other'
            complete_table.push(i)
        end
    end
    return complete_table.join
end

puts(caesar_cipher("What a string!", 5))