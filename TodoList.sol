//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TodoList{
    enum Priority { Low, Medium, High }
    struct Task{
        string description;
        bool isCompleted;
        Priority priority;
        string category;
        string dueDate;
    }
    mapping(address => Task[]) private UserTasks;

    event TaskAdded(address indexed user, string description, Priority priority);
    event TaskCompleted(address indexed user, uint256 taskId);
    event TaskDeleted(address indexed user, uint256 taskId);
    event TaskUpdated(address indexed user, uint256 taskId);

    function AddTask( string memory _description, Priority _priorityEnum, string memory _category, string memory _dueDate) public {
        Task memory NewTask = Task({
            description: _description,
            isCompleted: false,
            priority: _priorityEnum,
            category: _category,
            dueDate: _dueDate
        });

        UserTasks[msg.sender].push(NewTask);
        emit TaskAdded(msg.sender, _description, _priorityEnum);
    }

    function ToggleComplete(uint256 _index) public {
        require(_index < UserTasks[msg.sender].length, "Task does not exist");
        
        Task storage task = UserTasks[msg.sender][_index];
        task.isCompleted = !task.isCompleted;
        
        emit TaskCompleted(msg.sender, _index);
    }

    function DeleteTask(uint256 _index) public {
        require(_index < UserTasks[msg.sender].length, "Task does not exist");

        Task[] storage tasks = UserTasks[msg.sender];

        tasks[_index] = tasks[tasks.length - 1];
        tasks.pop();

        emit TaskDeleted(msg.sender, _index);
    }

    function updateTaskDescription(uint256 _index, string memory _newDescription) public {
        require(_index < UserTasks[msg.sender].length, "Task does not exist");
        
        UserTasks[msg.sender][_index].description = _newDescription;
        emit TaskUpdated(msg.sender, _index);
    }

    function getMyTasks() public view returns (Task[] memory) {
        return UserTasks[msg.sender];
    }

    function getTasksByStatus(bool _status) public view returns (Task[] memory) {
        Task[] memory allTasks = UserTasks[msg.sender];
        uint256 count = 0;

        for (uint i = 0; i < allTasks.length; i++) {
            if (allTasks[i].isCompleted == _status) {
                count++;
            }
        }

        Task[] memory FilteredTasks = new Task[](count);
        uint256 CurrentIndex = 0;

        for (uint i = 0; i < allTasks.length; i++) {
            if (allTasks[i].isCompleted == _status) {
                FilteredTasks[CurrentIndex] = allTasks[i];
                CurrentIndex++;
            }
        }

        return FilteredTasks;
    }

    function getSortedTasks() public view returns (Task[] memory) {
        Task[] memory SortedTasks = UserTasks[msg.sender];
        uint256 n = SortedTasks.length;

        for (uint i = 0; i < n; i++) {
            for (uint j = 0; j < n - 1; j++) {
                if (SortedTasks[j].priority < SortedTasks[j+1].priority) {
                    Task memory temp = SortedTasks[j];
                    SortedTasks[j] = SortedTasks[j+1];
                    SortedTasks[j+1] = temp;
                }
            }
        }
        return SortedTasks;
    }

}
