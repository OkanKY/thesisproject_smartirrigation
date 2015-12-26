CREATE TABLE USER(
    UserID INT NOT NULL primary key  AUTO_INCREMENT,
	UserName nvarchar(25) NOT NULL,
	Password nvarchar(25) NOT NULL,
	Status Bit 
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;
CREATE TABLE FIELD(

	FieldID INT NOT NULL primary key  AUTO_INCREMENT ,
	FieldName nvarchar(25) NOT NULL,
	FieldUrl nvarchar(50) NOT NULL
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;
CREATE TABLE FIELDINFORMATION(
	FieldID INT NOT NULL primary key AUTO_INCREMENT,
	DateInformation datetime NOT NULL,
    humidity int NOT NULL,
	temperature int NOT NULL,
    CONSTRAINT FIELDSIN
	FOREIGN  KEY (FieldID) REFERENCES FIELD (FieldID)
	ON DELETE CASCADE 
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;
CREATE TABLE LOGINFIELD(

	FieldID INT NOT NULL  AUTO_INCREMENT,
	UserName nvarchar(25) NOT NULL,
	PRIMARY KEY (FieldID,UserName),
	CONSTRAINT FIELDS
	FOREIGN  KEY (FieldID) REFERENCES FIELD (FieldID)
	ON DELETE CASCADE ,
	CONSTRAINT USERLOGINS
	FOREIGN  KEY (UserName) REFERENCES USERLOGIN (UserName)
	ON DELETE CASCADE 
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;
