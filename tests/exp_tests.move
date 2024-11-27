#[test_only]
module helloworld::exp_tests;

use helloworld::exp;
use std::debug;

#[test]
fun test_exp(){
    debug::print(&(exp::exp()))
}