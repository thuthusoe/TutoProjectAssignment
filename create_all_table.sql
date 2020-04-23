
CREATE TABLE DEPARTMENT (
    DEPARTMENT_ID       INT         NOT NULL,
    DEPARTMENT_NAME   VARCHAR(255)         NOT NULL,
    CONSTRAINT DEP_PK1 PRIMARY KEY(DEPARTMENT_ID));



CREATE TABLE POSITION (
    POSITION_ID       INT         NOT NULL,
    POSITION_NAME   VARCHAR(255)         NOT NULL,
    CONSTRAINT POS_PK2 PRIMARY KEY(POSITION_ID));



CREATE TABLE JAPANESE_LEVEL(
    LEVEL_ID       INT         NOT NULL,
    LEVEL_NAME   VARCHAR(255)         NOT NULL,
    CONSTRAINT JAP_PK3 PRIMARY KEY(LEVEL_ID));



CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID      CHAR(10)         NOT NULL,
    EMPLOYEE_NAME    VARCHAR(255)     NOT NULL,
    BIRTHDATE        DATE             NOT NULL,
    GENDER           CHAR(1)          NOT NULL,
    MARTIAL_STATUS   CHAR(1)          NOT NULL,
    LEVEL_ID         INT              NOT NULL,
    DEPARTMENT_ID    INT              NOT NULL,
    JOIN_DATE        DATE             NOT NULL,
    POSITION_ID      INT              NOT NULL,
	PASSWORD		 VARCHAR(8)       NOT NULL,
    EMAIL            VARCHAR(255)     NOT NULL,
    PHONE            VARCHAR(15)      NOT NULL,
    CONSTRAINT EMP_PK5 PRIMARY KEY(EMPLOYEE_ID),
       FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID),
       FOREIGN KEY (LEVEL_ID) REFERENCES JAPANESE_LEVEL(LEVEL_ID),
       FOREIGN KEY (POSITION_ID) REFERENCES POSITION(POSITION_ID));


COMMIT;