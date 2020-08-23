fn main() {
    let mut array = [14,33,27,10,35,19,42,44];
    let array_len = array.len();
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