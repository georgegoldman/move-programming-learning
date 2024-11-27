/*
/// Module: helloworld
module helloworld::helloworld;
*/
module helloworld::hello_world;

use std::string::String;

public fun hello_world(): String{
    b"Hello, World!".to_string()
}