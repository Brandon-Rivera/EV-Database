DROP DATABASE BAMX;

CREATE DATABASE BAMX;

USE BAMX;

CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT,
    folio INT,
    userName VARCHAR(40),
    userPassword VARCHAR(40),
    phoneNumber VARCHAR(10),
    eMail VARCHAR(40),
    PRIMARY KEY (id)
);
CREATE TABLE food(
    id INT NOT NULL AUTO_INCREMENT,
    foodName VARCHAR(40),
    foodDesc VARCHAR(300),
    lipidos INT,
    carbohidratos INT,
    proteinas INT,
    quantity INT,
    stock INT,
    expiration INT,
    PRIMARY KEY (id)
);
CREATE TABLE sLocation(
    id INT NOT NULL AUTO_INCREMENT,
    idUser INT NOT NULL,
    placeName VARCHAR(40),
    street VARCHAR(40),
    extNum VARCHAR(10),
    intNum VARCHAR(10),
    suburb VARCHAR(40),
    postalCode VARCHAR(5),
    city VARCHAR(40),
    stateN VARCHAR(40),
    CONSTRAINT fk_sLocation_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    PRIMARY KEY (id) 
);
CREATE TABLE disease(
    id INT NOT NULL AUTO_INCREMENT,
    diseaseName VARCHAR(40),
    disDescription VARCHAR(300),
    PRIMARY KEY (id)
);
CREATE TABLE administrator(
    id INT NOT NULL AUTO_INCREMENT,
    adminName VARCHAR(40),
    adminPassword VARCHAR(40),
    eMail VARCHAR(40),
    PRIMARY KEY (id)
);
CREATE TABLE feedback(
    id INT NOT NULL AUTO_INCREMENT,
    feedName VARCHAR(40),
    feedLevel INT,
    feedDescription VARCHAR(300),
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
    PRIMARY KEY (id)
);
CREATE TABLE questions(
    id INT NOT NULL AUTO_INCREMENT,
    questionType INT,
    question VARCHAR(300),
    questionDescription VARCHAR(300),
    isActive VARCHAR(1),
    PRIMARY KEY(id)
);
CREATE TABLE questionAnswer(
	id INT NOT NULL AUTO_INCREMENT,
    idQuestion INT NOT NULL,
    idUser INT NOT NULL,
    timeAnswered DATETIME,
    answer VARCHAR(300),
    CONSTRAINT fk_questionAnswer_question
		FOREIGN KEY(idQuestion) REFERENCES questions(id),
    CONSTRAINT fk_questionAnswer_user
		FOREIGN KEY(idUser) REFERENCES user(id),
	PRIMARY KEY(id)
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
	id INT NOT NULL AUTO_INCREMENT,
    idUser INT NOT NULL,
    idFood INT NOT NULL,
    dateCreated DATE,
    CONSTRAINT fk_package_user
		FOREIGN KEY(idUser) REFERENCES user(id),
    CONSTRAINT fk_package_food
		FOREIGN KEY(idFood) REFERENCES food(id),
	PRIMARY KEY(id)
);
CREATE TABLE questionOptions(
    id INT NOT NULL AUTO_INCREMENT,
    idQuestions INT NOT NULL,
    optionName VARCHAR(150),
    optionValue INT,
    CONSTRAINT fk_options_questions
		FOREIGN KEY(idQuestions) REFERENCES questions(id),
    PRIMARY KEY(id)
);
