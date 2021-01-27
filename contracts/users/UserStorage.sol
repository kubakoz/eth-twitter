pragma solidity ^0.5.10;

contract UserStorage {

    mapping(uint => Profile) profiles;

    struct Profile {
        uint id;
        bytes32 username;
    }

    uint latestUserId = 0;

    function createUser(bytes32 _userName) public returns(uint){
        latestUserId++;

        profiles[latestUserId] = Profile(latestUserId, _userName);

        return latestUserId;
    }

}