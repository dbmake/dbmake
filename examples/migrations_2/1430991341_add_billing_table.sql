
    -- DBMAKE: MIGRATE UP
    /*
        Place here all necessary DDL statements describing schema changes to be made

        Example:
        CREATE TABLE my_customers (
            id SERIAL PRIMARY KEY,
            name VARCHAR(45),
            update_date TIMESTAMP DEFAULT NOW() NOT NULL,
            create_date TIMESTAMP DEFAULT NOW() NOT NULL
        );
    */
	CREATE TABLE billing (
            id SERIAL PRIMARY KEY,
            customer_id VARCHAR(45),
            update_date TIMESTAMP DEFAULT NOW() NOT NULL,
            create_date TIMESTAMP DEFAULT NOW() NOT NULL
        );

    -- DBMAKE: SEPARATOR

    -- DBMAKE: MIGRATE DOWN
    /*
        Place here all DDL statements canceling the changes made to schema

        Example:
        DROP TABLE my_customers;
    */
	DROP TABLE billing;
    
