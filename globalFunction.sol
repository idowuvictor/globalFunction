//pragma solidity ^0.8.0;

contract globalfunction{

    event todoAdded(address indexed _sender, string indexed _todo, uint indexed _time);

    mapping(address => string) todos;

    function addTodo(string memory todo) external {
        todos[msg.sender] = todo;

        emit todoAdded(msg.sender, todo, block.timestamp);
    }

    function getTodo() external view returns(string memory){
        return todos[msg.sender];
    }

}
