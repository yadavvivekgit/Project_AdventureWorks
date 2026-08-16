--CREATE VIEW Calendar

CREATE VIEW gold.Calendar AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Calendar/',
        FORMAT = 'PARQUET'
    ) AS A;

--CREATE VIEW Customers

CREATE VIEW gold.Customers AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Customers/',
        FORMAT = 'PARQUET'
    ) AS A;

--CREATE VIEW ProductCategories

CREATE VIEW gold.ProductCategories AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/ProductCategories/',
        FORMAT = 'PARQUET'
    ) AS A;

--CREATE VIEW Product_Subcategories

CREATE VIEW gold.Product_Subcategories AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) AS A;


--CREATE VIEW Products

CREATE VIEW gold.Products AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Products/',
        FORMAT = 'PARQUET'
    ) AS A;

--CREATE VIEW Returns

CREATE VIEW gold.Returns AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Returns/',
        FORMAT = 'PARQUET'
    ) AS A;


--CREATE VIEW Sales

CREATE VIEW gold.Sales AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Sales/',
        FORMAT = 'PARQUET'
    ) AS A;


--CREATE VIEW Territories

CREATE VIEW gold.Territories AS
select * 
from 
    OPENROWSET (
        BULK 'https://projectadventureworksdl.blob.core.windows.net/silver/Territories/',
        FORMAT = 'PARQUET'
    ) AS A;