module helloworld::build_equality;

public struct MyStruct has drop {
    value: u8
}

public fun play_with_equality(){
    let struct1 = MyStruct { value: 42};
    let struct2 = MyStruct { value: 42 };

    let result  = struct1 == struct2;

    if (result)  {

    } else {

    }
}