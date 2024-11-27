module helloworld::ability;

use std::string::String;

public struct VeryAble has copy, drop {
    name: String,
}