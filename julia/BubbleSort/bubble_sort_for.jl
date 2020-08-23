function main()
    println("**NOTE**: Elements should be less then 25 as alogrithm work best on that only")
    println("Enter Bubble Sort elements sepreated by (',') Comma: ")
    input_string = readline()
    array = [parse(Int, each) for each in split(input_string, ",")]
    array_len = length(array)
    if array_len > 1 
        for _ in 1:array_len
            swapped = false
            for col in 1:(array_len - 1) 
                if array[col] > array[col + 1]
                    val = array[col + 1]
                    array[col + 1] = array[col]
                    array[col] = val
                    swapped = true
                    println("New array: ", array)
                end
            end
            if !swapped
                break
            end
        end
    end
    println("Sorted Array: ", array)
end

main()