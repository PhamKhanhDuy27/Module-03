CREATE DATABASE SALES_MANAGEMENT;
USE SALES_MANAGEMENT;
CREATE TABLE CUSTOMER (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
AGE INT NOT NULL, CHECK (AGE >= 18)
);
CREATE TABLE ORDERS (
ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_ID INT NOT NULL,
ORDER_DATE DATE NOT NULL,
TOTAL_PRICE BIGINT NOT NULL,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID)
);
CREATE TABLE PRODUCT (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
PRICE BIGINT NOT NULL
);
CREATE TABLE ORDER_DETAIL (
ORDER_ID INT NOT NULL,
PRODUCT_ID INT NOT NULL,
QUANTITY INT NOT NULL,
FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ID),
FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID)
);