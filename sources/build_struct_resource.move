module helloworld::build_struct_resource;

public struct Coin has store {
    value: u64
}

public fun mint (value: u64): Coin{
    Coin { value }
}

public fun withdraw(coin: &mut Coin, amount: u64): Coin {
    assert!(coin.value >= amount, 1000);
    coin.value = coin.value - amount;
    Coin { value: amount}
}

public fun deposit(coin: &mut Coin, other: Coin){
    let Coin {value} = other;
    coin.value = coin.value + value;
}

public fun destroy_zero(coin: Coin) {
    let Coin {value} = coin;
    assert!(value == 0, 1001)
}