//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract profile{
    struct UserProfile{
        string displayName;
        string bio;
    }

    mapping(address => UserProfile) public profiles;

    function setProfile(string memory _displayName, string memory _bio) public{
        // UserProfile memory newUserProfile = UserProfile({
        //     displayName: _displayName,
        //     bio: _bio
        // });

        // profiles[msg.sender] = newUserProfile;
        profiles[msg.sender] = UserProfile(_displayName, _bio);
    }

    function getProfile(address _user) public view returns(UserProfile memory){
        return profiles[_user];
    }
}