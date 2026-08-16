--Create credential, but first need to create master key

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Sitaram@12345678'

-- Create credential
CREATE DATABASE SCOPED CREDENTIAL cred_vivek
WITH
    IDENTITY = 'Managed Identity'

--Create external Data source
--2 external data source needs to be created, 1st is from the source silver and 2nd is to the gold location
CREATE EXTERNAL DATA SOURCE Source_Silver
WITH(
LOCATION = 'https://projectadventureworksdl.blob.core.windows.net/silver',
CREDENTIAL = cred_vivek
);

CREATE EXTERNAL DATA SOURCE Source_gold
WITH(
LOCATION = 'https://projectadventureworksdl.blob.core.windows.net/gold',
CREDENTIAL = cred_vivek
);

--Create external file format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--Create External Table

CREATE EXTERNAL TABLE gold.ext_Sales
WITH(
    LOCATION = 'ext_Sales',
    DATA_SOURCE = Source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.Sales;

SELECT * FROM gold.ext_Sales;