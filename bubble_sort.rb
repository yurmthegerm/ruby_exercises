def bubble_sort (arr)

    loop do 
        swapped = false
        for index in (0..arr.size-2) do
            if arr[index] > arr[index+1]
                arr[index], arr[index+1] = arr[index+1], arr[index]
                swapped = true
            end
        end
        break if swapped == false
    end

    return arr
end

p bubble_sort([4,3,78,2,0,2])