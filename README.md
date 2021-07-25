# LeaderBoardApp
This App let Player to generate Palindrome and check score . Longest the Palindrome , more score 
Game has two part 
1) UI 
2) Backend 
3) DB Part 



1)

a) Register Player 
 b)Generate Token 
 c)Submit Palindrome
 d)Get Players all Submissin
 e)Get Top 10 Players 
 
 
 
 

1) Save Player
![image](https://user-images.githubusercontent.com/17102344/126900444-e244b48e-5917-4c0e-acbd-4aef03d46dbc.png)

Post Request
http://localhost:5003/LeaderBoard/player/Saveplayer/ 

Input 

{
    "playerName": "Rajanikansdsdtdssds21",
    "playerAge": "54546",
    "emailId": "ryadav@ssdds.cossm",
    "totalScore": "1"
}


Output
{
    "playerId": 66,
    "playerName": "Rajanikansdsdtdssds21",
    "playerAge": "54546",
    "emailId": "ryadav@ssdds.cossm",
    "totalScore": 1
}









2) get Player 


Get Request 

http://localhost:5003/LeaderBoard/player/getplayerById/66 

Output

{
    "playerId": 66,
    "playerName": "Rajanikansdsdtdssds21",
    "playerAge": "54546",
    "emailId": "ryadav@ssdds.cossm",
    "totalScore": 1
}














3) Generate Token 

Post Request 
http://localhost:5003/LeaderBoard/token/GenerateToken/ 

Input 

{
    "playerId": 33,
    "playerName": "Rajanikansdsdtdssds21",
    "playerAge": "54546",
    "emailId": "ryadav@ss.cosm",
    "totalScore": 1
}

Output
{
    "tokenId": 2,
    "accessToken": "20210724213116",
    "playerID": 33,
    "generateTimeStamp": "2021.07.24 21:31:16"
}
















4) Get Token for a player :


Post request 


http://localhost:5003/LeaderBoard/token/getToken/ 

Input 


{
    "playerId": 66,
    "playerName": "Rajanikansdsdtdssds21",
    "playerAge": "54546",
    "emailId": "ryadav@ssdds.cossm",
    "totalScore": 1
}

Output

{
    "tokenId": 1,
    "accessToken": "20210724212914",
    "playerID": 66,
    "generateTimeStamp": "2021.07.24 21:29:14"
}











5) Submit Text 




http://localhost:5003/LeaderBoard/submission/SaveSubmission/ 

input 

{   
    "playerID": 66,
    "tokenId": 2,
    "accessToken": "20210724212914",
     "text": "TET Sir, I demand, I am a maid named Iris TET"
}



Output 
{
    "submissionId": 38,
    "playerID": 66,
    "tokenId": 2,
    "accessToken": "20210724212914",
    "text": "TET Sir, I demand, I am a maid named Iris TET",
    "score": 45,
    "status": "Success",
    "message": "Submissonwas successfull"
}








6) Get Submission by Player


http://localhost:5003/LeaderBoard/submission/getSubmissionByPlayer/ 

Input :

{
    "tokenId": 2,
    "accessToken": "20210724213116",
    "playerID": 33,
    "generateTimeStamp": "2021.07.24 21:31:16"
}

Output :

[
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 33,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "Sir, I demand, I am a maid named Iris",
            "score": 37,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 34,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 35,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 36,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    }
]




7) Get Top 10 Submussion



Post request 


http://localhost:5003/LeaderBoard/submission/getTopsubmission/ 


{
    "tokenId": 2,
    "accessToken": "20210724213116",
    "playerID": 33,
    "generateTimeStamp": "2021.07.24 21:31:16"
}




[
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 33,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "Sir, I demand, I am a maid named Iris",
            "score": 37,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 34,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 35,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 33,
            "playerName": "Rajanikansdsdtdsds21",
            "playerAge": "54546",
            "emailId": "ryadav@ss.cosm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 36,
            "playerID": 33,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 66,
            "playerName": "Rajanikansdsdtdssds21",
            "playerAge": "54546",
            "emailId": "ryadav@ssdds.cossm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 37,
            "playerID": 66,
            "tokenId": 2,
            "accessToken": "20210724213116",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    },
    {
        "player": {
            "playerId": 66,
            "playerName": "Rajanikansdsdtdssds21",
            "playerAge": "54546",
            "emailId": "ryadav@ssdds.cossm",
            "totalScore": 1
        },
        "submission": {
            "submissionId": 38,
            "playerID": 66,
            "tokenId": 2,
            "accessToken": "20210724212914",
            "text": "TET Sir, I demand, I am a maid named Iris TET",
            "score": 45,
            "status": "Success",
            "message": "Submissonwas successfull"
        }
    }
]

