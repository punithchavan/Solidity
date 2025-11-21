//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Twitter is Ownable{

    uint256 public MAX_TWEET_LENGTH = 280;

    struct Tweet{
        uint256 id;
        address author;
        string content;
        uint256 timeStamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    constructor() Ownable(msg.sender) {}

    //address public owner;

    // constructor(){
    //     owner=msg.sender;
    // }

    // modifier onlyOwner(){
    //     require(msg.sender == owner, "You are not the owner");
    //     _;
    // }


    function changeTweetLength(uint256 newTweetLength) public onlyOwner{
        MAX_TWEET_LENGTH = newTweetLength;
    }

    event TweetCreated(uint256 id, address author, string content, uint256 timestamp);

    function createTweet(string memory _tweet) public{

        require(bytes(_tweet).length <= MAX_TWEET_LENGTH, "Tweet too long bruh");

        Tweet memory newTweet = Tweet({
            id: tweets[msg.sender].length,
            author: msg.sender,
            content: _tweet,
            timeStamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);

        emit TweetCreated(newTweet.id, newTweet.author, newTweet.content, newTweet.timeStamp);
    }

    event TweetLiked(address liker, address tweetAuthor, uint256 tweetId, uint256 newLikeCount);

    function likeTweet(address author, uint256 id) external{
        require(tweets[author][id].id == id, "Tweet doesnt exist");
        tweets[author][id].likes++;

        emit TweetLiked(msg.sender, author, id, tweets[author][id].likes);
    }

    event TweetUnliked(address unliker, address tweetAuthor, uint256 tweetId, uint256 newLikeCount);

    function unlikeTweet(address author, uint256 id) external {
        require(tweets[author][id].id == id, "Tweet doesnt exist");
        require(tweets[author][id].likes>0, "Tweet has no like");
        tweets[author][id].likes--;

        emit TweetUnliked(msg.sender, author, id, tweets[author][id].likes);
    }

    function getTweet(uint _i) public view returns (Tweet memory){
        return tweets[msg.sender][_i];
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory){
        return tweets[_owner];
    }

    function getTotalLikes(address _author) external view returns(uint256){
        uint256 totalLikes;
        for(uint i=0;i<tweets[_author].length;i++){
            totalLikes+=tweets[_author][i].likes;
        }

        return totalLikes;
    }
}

