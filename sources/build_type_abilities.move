module helloworld::build_type_abilities;



public struct Person has copy, drop {
    name: std::string::String,
    age: u8
}

public fun main () {
    let person1 = Person { name: b"Goldman".to_string(), age:27 };
    let person2 = copy person1;
}