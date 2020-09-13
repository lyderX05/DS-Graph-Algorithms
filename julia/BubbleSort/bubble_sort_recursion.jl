#=
bubble_sort_recursion:
- Julia version: 
- Author: lyderX05
=#
count = 1
function swap(array, swap_index, array_length)
    temp = array[swap_index]
    if swap_index + 1 > array_length
        array[swap_index] = array[array_length]
        array[array_length] = temp
    else
        array[swap_index] = array[swap_index + 1]
        array[swap_index + 1] = temp
    end


end

function iteration(array, curIter, nextIter, array_length)
    global count
    if nextIter == nothing || curIter == nothing
        return count + 1
    end
    #println("Cur: $(curIter[1])  | Next: $(nextIter[1])")
    if curIter[1] > nextIter[1]
        swap(array, curIter[2] - 1, array_length)
        println("New Array: $array")
        curIter = iterate(array, curIter[2])
        nextIter = iterate(array, nextIter[2])
    else
        curIter = iterate(array, curIter[2])
        nextIter = iterate(array, nextIter[2])
    end
    return iteration(array, curIter, nextIter, array_length)
end

function bubble_sort(array, array_length)
    global count
    if count > array_length
        return array_length
    else
        curIter = iterate(array)
        nextIter = iterate(array, 2)
        println("Iteration: $count")
        count = iteration(array, curIter, nextIter, array_length)
        return bubble_sort(array, array_length)
    end
end

function main()
    println("**NOTE**: Elements should be less then 25 as alogrithm work best on that only")
    println("Enter Bubble Sort elements sepreated by (',') Comma: ")
    input_string = readline()
    array = [parse(Int, each) for each in split(input_string, ",")]
    array_len = length(array)
    println("Array length: ", array_len)
    bubble_sort(array, array_len)
    println("Array: $array")
end

main()