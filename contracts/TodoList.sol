// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.16;

contract TodoList{
    
    struct Todo{
        string task;
        bool checked;
    }


    Todo[] public todos;
    mapping (address => Todo) todo;
    event CreateTask(uint index, string task);
    event UpdateTask(uint index, string task);
    

    function createTasks(string memory _task) public {
        todos.push(Todo({
            task: _task,
            checked: false
        }));
    }

    function readTasks(uint _index) public view returns (string memory, bool){
        Todo storage routine = todos[_index];
        return (routine.task, routine.checked);
    }

    function readAllTasks() public view returns (Todo[] memory) {
        return todos;
    }

    function updateTask(uint _index, string memory _task) public {
        Todo storage routine = todos[_index];
                routine.task = _task;        
        emit UpdateTask(_index, routine.task);
    }

    function toggleChecked(uint _index) public  {
        todos[_index].checked = !todos[_index].checked;
    }

    function deleteTask(uint _index) public {
        delete todos[_index].task;
        delete todos[_index].checked;
    }

    function deleteAllTask() public {
        delete todos;
    }
}