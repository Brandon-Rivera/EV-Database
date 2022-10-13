DROP DATABASE BAMX;

CREATE DATABASE BAMX;

USE BAMX;

CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT,
    folio INT,
    userName VARCHAR(40),
    userPassword VARCHAR(56),
    phoneNumber VARCHAR(10),
    eMail VARCHAR(40),
    CONSTRAINT userName_u
    UNIQUE(userName),
    CONSTRAINT email_u
    UNIQUE(email),
    PRIMARY KEY (id)
);
CREATE TABLE food(
    id INT NOT NULL AUTO_INCREMENT,
    foodName VARCHAR(40),
    foodDesc VARCHAR(300),
    lipidos INT,
    carbohidratos INT,
    proteinas INT,
    measure VARCHAR(10),
    stock INT,
    expiration INT,
    CONSTRAINT foodName_u
    UNIQUE(foodName),
    PRIMARY KEY (id)
);
CREATE TABLE sLocation(
    id INT NOT NULL AUTO_INCREMENT,
    idUser INT NOT NULL,
    placeName VARCHAR(40),
    lat float,
    lon float,
    street VARCHAR(40),
    extNum VARCHAR(10),
    intNum VARCHAR(10),
    suburb VARCHAR(40),
    postalCode VARCHAR(5),
    city VARCHAR(40),
    stateN VARCHAR(40),
    CONSTRAINT idUser_u
    UNIQUE(idUser),
    CONSTRAINT fk_sLocation_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    PRIMARY KEY (id) 
);
CREATE TABLE disease(
    id INT NOT NULL AUTO_INCREMENT,
    diseaseName VARCHAR(40),
    disDescription VARCHAR(300),
    CONSTRAINT diseaseName_u
    UNIQUE(diseaseName),
    PRIMARY KEY (id)
);
CREATE TABLE administrator(
    id INT NOT NULL AUTO_INCREMENT,
    adminName VARCHAR(40),
    adminPassword VARCHAR(56),
    eMail VARCHAR(40),
    CONSTRAINT adminName_u
    UNIQUE(adminName),
    CONSTRAINT eMail_u
    UNIQUE(eMail),
    PRIMARY KEY (id)
);
CREATE TABLE feedback(
    id INT NOT NULL AUTO_INCREMENT,
    feedName VARCHAR(40),
    feedLevel INT,
    feedDescription VARCHAR(300),
    CONSTRAINT feedName_u
    UNIQUE(feedName),
    PRIMARY KEY (id)
);
CREATE TABLE sex(
    id INT NOT NULL AUTO_INCREMENT,
    sexName VARCHAR(40),
    CONSTRAINT sexName_u
    UNIQUE(sexName),
    PRIMARY KEY (id)
);
CREATE TABLE famMember(
	  id INT NOT NULL AUTO_INCREMENT,
    idUser INT,
    isLeader VARCHAR(1),
    names VARCHAR(40),
    lastNameD VARCHAR(20),
    lastNameM VARCHAR(20),
    sex INT,
    birthDate DATE,
    weightV FLOAT,
    height FLOAT,
    isPregnant VARCHAR(1),
    CONSTRAINT fk_member_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    CONSTRAINT fk_member_sex
		FOREIGN KEY(sex) REFERENCES sex(id),
    PRIMARY KEY (id)
);
CREATE TABLE questionType(
    id INT NOT NULL AUTO_INCREMENT,
    qType VARCHAR(54),
    CONSTRAINT qType_u
    UNIQUE(qType),
    PRIMARY KEY(id)
);

CREATE TABLE questionOptions(
    id INT NOT NULL auto_increment,
    idQuestions INT NOT NULL,
    optionName VARCHAR(150),
    optionValue INT,
    primary key(id)
);

CREATE TABLE questions(
    id INT NOT NULL AUTO_INCREMENT,
    questionType INT,
    question VARCHAR(300),
    questionDescription VARCHAR(300),
    isActive VARCHAR(1),
    qOptions INT,
    CONSTRAINT fk_questions_questionType
		FOREIGN KEY(questionType) REFERENCES questionType(id),
    CONSTRAINT question_u
    UNIQUE(question),
    PRIMARY KEY(id)
);
CREATE TABLE questionAnswer(
	  id INT NOT NULL,
    idQuestion INT NOT NULL,
    idUser INT NOT NULL,
    idMember INT NOT NULL,
    timeAnswered DATETIME,
    idRow INT,
    answer VARCHAR(300),
    CONSTRAINT fk_questionAnswer_question
		FOREIGN KEY(idQuestion) REFERENCES questions(id),
    CONSTRAINT fk_questionAnswer_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    CONSTRAINT fk_questionAnswer_famMember
		FOREIGN KEY(idMember) REFERENCES famMember(id)
);
CREATE TABLE userFeedback(
	  id INT NOT NULL AUTO_INCREMENT,
    idUser INT NOT NULL,
    idFeedback INT NOT NULL,
    timeSent DATETIME,
    CONSTRAINT fk_userFeedback_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    CONSTRAINT fk_userFeedback_feedback
		FOREIGN KEY(idFeedback) REFERENCES feedback(id),
	  PRIMARY KEY(id)
);
CREATE TABLE memberDisease(
    idMember INT NOT NULL,
    idDisease INT NOT NULL,
    CONSTRAINT fk_memberDisease_member
		FOREIGN KEY(idMember) REFERENCES famMember(id),
    CONSTRAINT fk_memberDisease_disease
		FOREIGN KEY(idDisease) REFERENCES disease(id)
);
CREATE TABLE package(
	  id INT NOT NULL,
    idUser INT NOT NULL,
    idFood INT NOT NULL,
    quantity INT NOT NULL,
    dateCreated DATE,
    CONSTRAINT fk_package_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    CONSTRAINT fk_package_food
		FOREIGN KEY(idFood) REFERENCES food(id)
);

CREATE TABLE idealValues(
    id INT NOT NULL AUTO_INCREMENT,
    person VARCHAR(54),
    carbohydrates INT,
    lipids INT,
    proteins INT,
    CONSTRAINT person_u
    UNIQUE(person),
    PRIMARY KEY(id)
);
CREATE TABLE whiteList(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(54),
    CONSTRAINT email_u
    UNIQUE(email),
    PRIMARY KEY(id)
);
