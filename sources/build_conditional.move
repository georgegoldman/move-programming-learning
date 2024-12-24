module helloworld::build_conditional;

fun testing_conditional(mut x: u64){
    if (x > 5){
        x = x - 5;
    };
    let z = if (x < 100) {
        x
    }else {
        100
    };
}