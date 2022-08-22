// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.16;

contract TodoList{
    
    struct Todo{
        string task;
        bool checked;
    }

    mapping(address => Todo) public todo;

    event CreateTask(address indexed addr, string indexed task);

    function createTasks(address _addr, string memory _task) public {
        Todo storage todos = todo[_addr];
        todos.task = _task;
        todos.checked = false;
        emit CreateTask(_addr, _task);
    }

    function readTasks(address _addr) public view returns (string memory, bool){
        return (todo[_addr].task, todo[_addr].checked);
    }

    function updateTask(address _addr, string memory _task) public {
        todo[_addr].task = _task;
    }

    function toggleChecked(address _addr) public  {
        todo[_addr].checked = todo[_addr].checked ? false : true;
    }

    function deleteTask(address _addr) public {
        delete todo[_addr].task;
        delete todo[_addr].checked;
    }
}// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract TodoList{
    
    struct Todo{
        string task;// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract TodoList{
    
    struct Todo{
        string task;
        bool checked;
    }

    mapping(address => Todo) public todo;

    event CreateTask(address indexed addr, string indexed task);

    function createTasks(address _addr, string memory _task) public {
        Todo storage todos = todo[_addr];
        todos.task = _task;
        todos.checked = false;
        emit CreateTask(_addr, _task);
    }

    function readTasks(address _addr) public view returns (string memory, bool){
        return (todo[_addr].task, todo[_addr].checked);
    }

    function updateTask(address _addr, string memory _task) public {
        todo[_addr].task = _task;
    }

    function toggleChecked(address _addr) public  {
        todo[_addr].checked = todo[_addr].checked ? false : true;
    }

    function deleteTask(address _addr) public {
        delete todo[_addr].task;
        delete todo[_addr].checked;
    }
}
        bool checked;
    }

    mapping(address => Todo) public todo;

    event CreateTask(address indexed addr, string indexed task);

    function createTasks(address _addr, string memory _task) public {
        Todo storage todos = todo[_addr];
        todos.task = _task;
        todos.checked = false;
        emit CreateTask(_addr, _task);
    }

    function readTasks(address _addr) public view returns (string memory, bool){
        return (todo[_addr].task, todo[_addr].checked);
    }

    function updateTask(address _addr, string memory _task) public {
        todo[_addr].task = _task;
    }

    function toggleChecked(address _addr) public  {
        todo[_addr].checked = todo[_addr].checked ? false : true;
    }

    function deleteTask(address _addr) public {
        delete todo[_addr].task;
        delete todo[_addr].checked;
    }
}