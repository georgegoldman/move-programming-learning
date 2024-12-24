module helloworld::build_struct_resources;
public struct Foo has copy, drop{x: u64, y:bool}
public struct Bar {}
public struct Baz has drop{foo: Foo}

public fun example() {
    let foo = Foo { x:0, y: false };
    let baz = Baz { foo: foo };
}