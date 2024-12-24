module helloworld::build_destroy_struct_bypatter_binding;

use std::debug;

public struct Foo {x: u64, y:bool}
public struct Bar {foo: Foo}
public struct Baz{}

fun example_destroy_foo() {
    let foo = Foo { x:3,  y: false};
    let Foo{x, y: foo_y} = foo;
}

fun example_destroy_foo_wildcard() {
    let foo = Foo {x: 3,y: false};
    let Foo{x,y: _}= foo;
}

public fun example_destroy_foo_assignment(): u64{
    let x: u64;
    let y: bool;
    Foo { x, y } = Foo { x:3, y:false };
    x

}