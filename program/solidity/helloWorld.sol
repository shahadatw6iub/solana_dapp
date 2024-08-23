
@program_id("d5vQjPxS71xWfvrxLgEBmBBiKrU8xkZhX4cLP79xpKP")
contract HelloWorld {
    bool private value = true;

    @payer(payer)
    constructor(address payer) {
        print("Hello, World!");
    }

    /// A message that can be called on instantiated contracts.
    /// This one flips the value of the stored `bool` from `true`
    /// to `false` and vice versa.
    function flip() public {
            value = !value;
    }

    /// Simply returns the current value of our `bool`.
    function get() public view returns (bool) {
            return value;
    }
}
