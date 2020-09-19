/*
# Bubble Sort For Loop
# @author: Shubham Heda
# Email: hedashubham5@gmail.com
 */

use std::io::{self};

fn main() {
    println!("Bubble Sort Algorithm");
    let mut buffer = String::new();
    io::stdin().read_line(&mut buffer).unwrap();
    let mut array:Vec<i32> = buffer.trim().split(',').map(|s| s.parse::<i32>().unwrap()).collect();
    let array_len = array.len();
    println!("Array length {:?}", array_len);
    println!("Unsorted Array {:?}", array);
    println!("===========================");
    if array_len > 25 {
        panic!("Array Size should be less than 25 as larger array increases time complexity of execution");
    }
    if array_len >  1 {
        for _ in 0..array_len {
            let mut swapped = false;
            for col in 0..(array_len - 1) {
                if array[col] > array[col+1] {
                    let val = array[col + 1];
                    array[col + 1] = array[col];
                    array[col] = val;
                    swapped = true;
                    println!("New Array {:?}", array);
                }
            }
            if !swapped {
                break;
            }
        }
    } else {
        println!("Array Contains only one Value: {:?}", array);
    }
    println!("===========================");
    println!("Sorted Array: {:?}", array);

}