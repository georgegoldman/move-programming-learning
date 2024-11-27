module helloworld::sui_address;

use sui::address;
use std::string::String;

fun sui_addr(){
    // converting an address to u256 and vice versa
    let addr_as_u256: u256  = address::to_u256(@0x1);
    let addr = address::from_u256(addr_as_u256);

    // converting address to vector<u8>
    let addr_as_u8:vector<u8> = address::to_bytes(@0x1);
    let addr = address::from_bytes(addr_as_u8);

    // converting address to string and vs
    let addr_as_string: String = address::to_string(@0x1);
    

}