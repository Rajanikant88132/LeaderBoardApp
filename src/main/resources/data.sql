DROP TABLE IF EXISTS PLAYER;

CREATE TABLE PLAYER (
  player_Id INT  PRIMARY KEY,
  player_Name VARCHAR(250) ,
  player_Age INT,
  email_Id  VARCHAR(250) ,
  total_Score INT  
);

  commit;
INSERT INTO PLAYER (player_Id, player_Name, player_Age,email_Id,total_Score) VALUES
  (99, 'TEST', 12,'TESTRAJ@raj.com',10);


  commit;
CREATE TABLE TOKEN (
  token_Id INT   PRIMARY KEY,
  access_Token VARCHAR(250) ,
  player_ID INT ,
  generate_Time_Stamp VARCHAR(250) 
);

INSERT INTO TOKEN (token_Id, access_Token, player_ID,generate_Time_Stamp) VALUES
  (11,'TEST', 12,'232323');
  commit;

DROP TABLE IF EXISTS SUBMISSION;


CREATE TABLE SUBMISSION (
  submission_Id INT   PRIMARY KEY,
  player_ID INT ,
  token_Id INT,
  access_Token VARCHAR(250) ,
  text VARCHAR(250) ,
  score INT ,
   status VARCHAR(250) ,
   message VARCHAR(250) ,
);

  commit;
INSERT INTO SUBMISSION (submissionId, playerID, tokenId,accessToken,text,score,status,message) VALUES
  (56565,12,'9999', 'TEST', 'TESET',30,'Success','Success submitted');

  commit;