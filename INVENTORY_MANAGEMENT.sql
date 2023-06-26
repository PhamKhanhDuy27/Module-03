CREATE DATABASE INVENTORY_MANAGEMENT;
USE INVENTORY_MANAGEMENT;
CREATE TABLE DELIVERY_BILL (
ID INT AUTO_INCREMENT PRIMARY KEY,
DATE_OF_INVENTORY DATE NOT NULL,
PRICE bigint NOT NULL,
QUANTITY INT NOT NULL
);
CREATE TABLE SUPPLIES (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL
);
CREATE TABLE RECEIPT (
ID INT AUTO_INCREMENT PRIMARY KEY,
INPUT_DAY DATE NOT NULL,
PRICE BIGINT NOT NULL,
QUANTITY INT NOT NULL
);
CREATE TABLE DIRECT_CARD (
ID INT AUTO_INCREMENT PRIMARY KEY,
ORDER_DATE DATE NOT NULL
);
CREATE TABLE SUPPLIER (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
ADDRESS VARCHAR(250),
PHONE VARCHAR(50)
);
ALTER TABLE DIRECT_CARD ADD COLUMN SUPPLIER_ID INT NOT NULL;
ALTER TABLE DIRECT_CARD ADD constraint FOREIGN KEY (SUPPLIER_ID) REFERENCES SUPPLIER(ID);
ALTER TABLE DIRECT_CARD ADD COLUMN SUPPLIES_ID INT NOT NULL;
ALTER TABLE DIRECT_CARD ADD CONSTRAINT FOREIGN KEY (SUPPLIES_ID) REFERENCES SUPPLIES(ID);
ALTER TABLE DELIVERY_BILL ADD COLUMN SUPPLIES_ID INT NOT NULL;
ALTER TABLE DELIVERY_BILL ADD CONSTRAINT FOREIGN KEY (SUPPLIES_ID) REFERENCES SUPPLIES(ID);
ALTER TABLE RECEIPT ADD COLUMN SUPPLIES_ID INT NOT NULL;
ALTER TABLE RECEIPT ADD CONSTRAINT FOREIGN KEY (SUPPLIES_ID) REFERENCES SUPPLIES(ID);
