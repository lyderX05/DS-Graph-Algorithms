# Bubble Sort For Loop
# @author: Shubham Heda
# Email: hedashubham5@gmail.com

def main()
  puts "**NOTE**: Elements should be less then 25 as alogrithm work best on that only"
  puts "Enter Bubble Sort elements sepreated by (',') Comma: "
  input_string = readline
  array = input_string.chomp.split ","
  array = array.collect { |each| each.to_i }
  array_len = array.length
  if array_len > 1
    for _ in 0..(array_len - 1)
      swapped = false
      for col in 0..(array_len - 2)
        if array[col] > array[col + 1]
          val = array[col + 1]
          array[col + 1] = array[col]
          array[col] = val
          swapped = true
          puts "New array: #{array}"
        end
      end
      unless swapped
        break
      end
    end
  else
    puts "Array Contains only one Value:  #{array}"
  end
  puts "==========================="
  puts "Sorted Array: #{array}"
end

main