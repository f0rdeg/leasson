pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract Accumulator {
    uint public result = 1;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }
/** 
    modifier check(uint factor) {
        
        _;
    }
*/
    function product(uint factor) public {
        require(tvm.pubkey() != 0, 101);
        require(factor < 10, 110);
        require(factor > 0, 109);
        tvm.accept();
        result *= factor;  
    }
}
