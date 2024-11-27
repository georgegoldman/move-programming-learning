module helloworld::cust_typ_struct;

use std::string::String;

public struct Artist {
    name: String,
}

public struct Record {
    title: String,
    artist: Artist,
    year: u16,
    is_debut: bool,
    edition: Option<u16>,
}

fun function() {
    let mut artist = Artist {
        name: b"The Beatles".to_string()
    };

        // Access the `name` field of the `Artist` struct.
    let artist_name = artist.name;

    // Access a field of the `Artist` struct.
    assert!(artist.name == b"The Beatles".to_string())

    // Mutate the `name` field of the `Artist` struct.
    artist.name = b"Led Zeppelin".to_string()

    // Check that the `name` field has been mutated.
    assert!(artist.name == b"Led Zeppelin".to_string())

  

}