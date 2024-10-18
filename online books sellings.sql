CREATE TABLE "book" (
  "id" integer PRIMARY KEY,
  "title" varchar(50),
  "author" varchar(50),
  "price" decimal(10,2)
);

CREATE TABLE "customers" (
  "id" integer PRIMARY KEY,
  "first_name" varchar(50),
  "middle_name" varchar(50),
  "last_name" varchar(50),
  "email_address" varchar(50),
  "phone_number" varchar(50)
);

CREATE TABLE "sales" (
  "sales_id" integer PRIMARY KEY,
  "customers_id" integer,
  "sales_date" timestamp,
  "total_amount" decimal(10,2),
  "payment_method" varchar(50)
);

CREATE TABLE "category" (
  "category_id" integer PRIMARY KEY,
  "category_name" varchar(50),
  "description" varchar(50),
  "book_id" integer,
  "sales_id" integer,
  "customers_id" integer
);

ALTER TABLE "category" ADD FOREIGN KEY ("customers_id") REFERENCES "customers" ("id");

ALTER TABLE "category" ADD FOREIGN KEY ("book_id") REFERENCES "book" ("id");

ALTER TABLE "category" ADD FOREIGN KEY ("sales_id") REFERENCES "sales" ("sales_id");
