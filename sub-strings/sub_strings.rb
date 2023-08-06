def substrings(sentence, dictionary)
    word_array = sentence.downcase.split
    result = {}
    for substring in dictionary
        count = 0
        for word in word_array
            if word[substring]
                count += 1
            end
        end

        if count > 0
            result[substring] = count
        end
    end
    return result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))