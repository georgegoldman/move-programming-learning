module helloworld::build_script;

public struct  Example has copy, drop {i: u64}

use std::debug;

const ONE: u64 = 1;

public fun print(x: u64) {
    let sum = x + ONE;
    let example = Example {i:sum};
    debug::print(&sum);
}
