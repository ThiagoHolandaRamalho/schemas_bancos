 -- Atualizado em 29/04/2025 23:04:20 
                  
                  
    IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'AdventureWorksDW2019')
    BEGIN
        IF @@TRANCOUNT > 0
        BEGIN
            COMMIT TRAN;
        END;
        CREATE DATABASE AdventureWorksDW2019;
    END; 


    IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'dbt')
    BEGIN
        IF @@TRANCOUNT > 0
        BEGIN
            COMMIT TRAN;
        END;
        CREATE DATABASE dbt;
    END; 


    IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'innoveo')
    BEGIN
        IF @@TRANCOUNT > 0
        BEGIN
            COMMIT TRAN;
        END;
        CREATE DATABASE innoveo;
    END; 


    IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'vendas')
    BEGIN
        IF @@TRANCOUNT > 0
        BEGIN
            COMMIT TRAN;
        END;
        CREATE DATABASE vendas;
    END; 

