module helloworld::build_ref;

use std::debug;

public struct S {
    f: u64
}

public fun playing_with_ref(){
    let mut x = 10;
    let imm_ref: u64 = 10;
    let mut_ref: &mut u64 = &mut x;
    *mut_ref = 10;

    debug::print(mut_ref);

    let i= 5;
    let j: &u64 = &x;
    let k: &u64 = j;

}

public fun example (s: &mut S){
    let imm_ref: u64 = s.f;
    let mut_ref: &mut u64 = &mut s.f;
    *mut_ref = 19;
    debug::print(mut_ref);
}
