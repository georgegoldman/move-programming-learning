module helloworld::build_aa;

public fun pop_twice(v: &mut vector<u64>){
    let len = vector::length(v);
    if (len < 2) {
        abort 42
    };
    let second = vector::pop_back(v);
    let first = vector::pop_back(v);

    (first, second);
}

public fun check_vec(v: &vector<u64>, bound: u64) {
    let mut i = 0;
    let len = vector::length(v);

    while (i < len){
        let cur = vector::borrow(v, i);
        assert!(*cur <= bound, 42);

        i = i + 1;
    }
}

