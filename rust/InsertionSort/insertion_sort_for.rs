use std::io::{self};
fn main() {
    println!("Insertion Sort Algorithm");
    let mut buffer = String::new();
    io::stdin().read_line(&mut buffer).unwrap();
    let mut array:Vec<i32> = buffer.trim().split(',').map(|s| s.parse::<i32>().unwrap()).collect();
    let array_len = array.len();
    if array_len > 25 {
        panic!("Array Size should be less than 25 as larger array increases time complexity of execution");
    }
    for elem in 1..array_len {
        let insertValue = array[elem];
        let mut holepoint = elem;
        while holepoint > 0 && array[holepoint - 1] > insertValue {
            array[holepoint] = array[holepoint - 1];
            holepoint = holepoint - 1;
            println!("One Array: {:?}", array);
        }
        array[holepoint] = insertValue;
        println!("Sec Array: {:?}", array);

    }
}