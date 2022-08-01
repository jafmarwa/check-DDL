CREATE TABLE Custumer (
    Custumer_id VARCHAR2 (20) CONSTRAINT idcustumer Primary Key,
    Custumer_Name VARCHAR2 (20) CONSTRAINT namecustumer NOT NULL,
    Custumer_Tel NUMBER
);

CREATE TABLE Product (
    Product_id VARCHAR2 (20) CONSTRAINT iddproduct Primary Key,
    Product_Name VARCHAR (20) CONSTRAINT nameproduct NOT NULL,
    Price NUMBER CONSTRAINT priceproduct CHECK  (price >=0)
);

CREATE TABLE Orders (
    Custumer_id VARCHAR2(20) ,
    Product_id VARCHAR2(20) ,
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT orders FOREIGN KEY (Custumer_id) REFERENCES Orders (Custumer_id),
    CONSTRAINT product FOREIGN KEY (Product_id) REFERENCES Orders (Product_id)
);

ALTER TABLE Product ADD Category VARCHAR(20);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT "SYSDATE"