// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract LeaveSBT {
    address public immutable owner;
    uint32 public constant MAX_LEAVE_DAYS = 30;
    uint32 public daysUsed;

    event LeaveTaken(uint32 daysTaken, uint32 newTotal, uint256 ts);

    constructor() {
        owner = msg.sender;
    }

    function leaveOf(address who) external view returns (bool isOnLeave, uint32 _daysUsed) {
        if (who != owner) return (false, 0);
        _daysUsed = daysUsed;
        isOnLeave = _daysUsed < MAX_LEAVE_DAYS;
    }

    function takeLeave(uint32 daysRequested) external {
        require(msg.sender == owner, "Only owner");
        require(daysRequested >= 1 && daysRequested <= MAX_LEAVE_DAYS, "Invalid days");
        uint32 newTotal = daysUsed + daysRequested;
        require(newTotal <= MAX_LEAVE_DAYS, "Exceeds 30-day cap");
        daysUsed = newTotal;
        emit LeaveTaken(daysRequested, newTotal, block.timestamp);
    }

    receive() external payable {
        revert("ETH not accepted");
    }
}
