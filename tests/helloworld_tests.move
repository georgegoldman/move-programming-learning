#[test_only]
module helloworld::helloworld_tests;

use helloworld::hello_world;

#[test]
fun test_hello_world(){
    assert!(hello_world::hello_world() == b"Hello, World!".to_string(), 0)
}
