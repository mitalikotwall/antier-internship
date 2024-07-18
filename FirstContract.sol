pragma solidity 0.8.22;

contract FirstContract {'-'
    int private num1;
    uint160 private num2;
    address public user; // 0x4f5278b057622bac773c3a21aefad46a5680248d
    bool public isTrue; // true
    string public name;
    bytes public hash;
     
    uint[10] public arr1;
    uint[] public arr2;
    address [] public users;

    mapping(address => uint) public deposits;
    
    struct UserDetails {
        uint agr;
        string name
    } 

    UserDetails public user1;

    function addNumber(uint _num) public {
       num1 = int(_num);
       num2 = _num;
    }

    function getNum1() public view returns(int){
        return num1;
    }
    function add(uint _num1,uint _num2) public pure returns(uint){
        return _num2 + _num2;
    }
}