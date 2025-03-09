
--Card Holder Table
CREATE TABLE "card_holder" (
    id INT IDENTITY(1,1)   NOT NULL,
    "name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "id"
     )
)


 --Credit Card Table
CREATE TABLE "credit_card" (
    "card" VARCHAR(20)   NOT NULL,
    "id_card_holder" INT   NOT NULL,
    CONSTRAINT "pk_credit_card" PRIMARY KEY (
        "card"
     )
)


  --Merchant Table
CREATE TABLE "merchant" (
    "id" INT IDENTITY(1,1)   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    "id_merchant_category" INT   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
)


--Merchant Category Table
CREATE TABLE "merchant_category" (
    "id" INT IDENTITY (1,1)   NOT NULL,
    "name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "id"
     )
)

  
--Transactions Table
CREATE TABLE "transactions" (
    "id" INT   NOT NULL,
    "date" DATETIME   NOT NULL,
    "amount" FLOAT   NOT NULL,
    "card" VARCHAR(20)   NOT NULL,
    "id_merchant" INT   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
)
