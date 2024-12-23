module helloworld::build_var;

public fun playing_with_var(){
    let x = 0;
    {
        let x = 1;
    }
}