module helloworld::build_generic_types;

public struct RegularTransaction {}
public struct SpecialTransaction {}

public struct Transaction<phantom T>  has drop{
    sender: address,
    recipient: address,
    amount: u64
}

fun processTxn<T>(tx: Transaction<T>) {
    // process the transaction
}

fun main() {
    let regularTxn = Transaction<RegularTransaction>{
        sender: @0x123,
        recipient: @0x456,
        amount: 100,
    };
    
    let specialTxn = Transaction<SpecialTransaction>{
        sender: @0x123,
        recipient: @0x456,
        amount: 100,
    };
}