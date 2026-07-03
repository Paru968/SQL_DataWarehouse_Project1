/*
===============================================================================
Load Bronze Layer
===============================================================================

Script Purpose:
    Creates a stored procedure to load raw CRM and ERP CSV files into
    Bronze layer tables.

Process:
    1. Truncate existing data.
    2. Load latest CSV files using BULK INSERT.
    3. Display execution duration.
    4. Capture errors using TRY...CATCH.

===============================================================================
*/

USE DataWarehouse;
GO

CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN

    SET NOCOUNT ON;

    DECLARE @START_TIME DATETIME,
            @END_TIME DATETIME,
            @BATCH_START_TIME DATETIME,
            @BATCH_END_TIME DATETIME;

    BEGIN TRY

        SET @BATCH_START_TIME = GETDATE();

        PRINT '==============================================================';
        PRINT 'Loading Bronze Layer';
        PRINT '==============================================================';

        ----------------------------------------------------------------------
        -- CRM Customer
        ----------------------------------------------------------------------

        SET @START_TIME = GETDATE();

        PRINT 'Truncating bronze.crm_cust_info';

        TRUNCATE TABLE bronze.crm_cust_info;

        BULK INSERT bronze.crm_cust_info
        FROM 'C:\Users\user\Desktop\DATAWarehouseproject\datasets\source_crm\cust_info.csv'
        WITH
        (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );

        SET @END_TIME = GETDATE();

        PRINT 'CRM Customer Loaded in '
            + CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR(10))
            + ' Seconds';

        ----------------------------------------------------------------------
        -- Repeat the same process for remaining five tables
        ----------------------------------------------------------------------

        /*
            crm_prd_info
            crm_sales_details
            erp_loc_a101
            erp_cust_az12
            erp_px_cat_g1v2
        */

        SET @BATCH_END_TIME = GETDATE();

        PRINT '==============================================================';
        PRINT 'Bronze Layer Loaded Successfully';
        PRINT '==============================================================';

        PRINT 'Total Duration : '
            + CAST(DATEDIFF(SECOND,@BATCH_START_TIME,@BATCH_END_TIME) AS NVARCHAR(10))
            + ' Seconds';

    END TRY

    BEGIN CATCH

        PRINT '==============================================================';
        PRINT 'ERROR OCCURRED';
        PRINT '==============================================================';

        PRINT 'Error Number : ' + CAST(ERROR_NUMBER() AS NVARCHAR(10));
        PRINT 'Error Line   : ' + CAST(ERROR_LINE() AS NVARCHAR(10));
        PRINT 'Error Message: ' + ERROR_MESSAGE();

    END CATCH

END;
GO

EXEC bronze.load_bronze;
GO
