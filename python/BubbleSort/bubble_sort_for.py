# Bubble Sort For Loop
# @author: Shubham Heda
# Email: hedashubham5@gmail.com

def main():
    print("**NOTE**: Elements should be less then 25 as alogrithm work best on that only")
    print("Enter Bubble Sort elements sepreated by (',') Comma: ")
    input_string = input()
    array = [int(each) for each in input_string.split(",")]
    array_len = len(array)
    if array_len > 1:
        for _ in range(array_len):
            swapped = False
            for col in range(array_len - 1):
                if array[col] > array[col + 1]:
                    array[col], array[col + 1] = array[col + 1], array[col]
                    swapped = True
                    print("New Array: ", array)
            if not swapped:
                break
    else:
        print("Array Contains Only One Value: ", array)
    print("===========================")
    print("Sorted Array: ", array)

if __name__ == '__main__':
    main()
