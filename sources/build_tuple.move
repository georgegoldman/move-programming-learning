module helloworld::build_tuple;

public fun learn_tuple(){
    ();
    // let (x, y) : (u8,u64) = (10,20);
    let x: &u64 = &0;
    let y: &mut u64 = &mut 1;

    let (a, b):(&u64, &u64) = (x, y);
    let (c, d):(&u64, &u64) = (y, y);
    let (e, f): (&u64, &mut u64)= (x,y);
}