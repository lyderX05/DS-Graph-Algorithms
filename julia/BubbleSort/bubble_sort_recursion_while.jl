function bubbleSort(array, array_len, initial, swapped)
    if array_len > initial
        if array[initial] > array[initial+1]
            swapped[initial] = 0
            val = array[initial + 1]
            array[initial + 1] = array[initial]
            array[initial] = val
            println("New Array: ", array)
            return bubbleSort(array, array_len, initial + 1, swapped)
        end
    end
    swapped[initial] = 1
    return array
end

function main()
    println("**NOTE**: Elements should be less then 25 as alogrithm work best on that only")
    println("Enter Bubble Sort elements sepreated by (',') Comma: ")
    input_string = readline()
    array = [parse(Int, each) for each in split(input_string, ",")]
    array_len = length(array)
    println("Array length: ", array_len)
    if array_len > 25
        println("Not a best Method to have large array sorting")
        exit(2)
    end
    if array_len > 1
        initial = 1
        swapped = zeros(Int32, array_len)
        while true
            array = bubbleSort(array, array_len, initial, swapped)
            if initial == array_len - 1
                initial = 1
            else
                initial += 1
            end
            if !(0 in swapped)
                break
            end
        end 
    end
    println("Sorted Array: ", array)
end
main()