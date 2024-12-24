module helloworld::build_loop;


fun sum(n: u64): u64 {
    let mut sum = 0;
    let mut i = 1;
    while (i <= n){
        sum = sum + i;
        i = i + 1;
    };

    sum
}

fun smallest_factor(mut n: u64): u64{
    let mut i = 2;
    while (i <= n) {
        if (n % i == 0) {
            break
        };
        i = i +1;
    };
    i
}

fun sum_intermediate(n: u64): u64{
    let mut sum = 0;
    let mut i  = 0;
    while (i < n){
        i = i + 1;
        if (i % 10 == 0){
            continue;
        };
        sum = sum + i;
    };
    sum
}