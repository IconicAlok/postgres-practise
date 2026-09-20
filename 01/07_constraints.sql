-- NOT NULL, UNIQUE, DEFAULT, CHECK
-- app script developer

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts 
    (
        id SERIAL PRIMARY KEY,
        
        full_name TEXT NOT NULL,

        email TEXT UNIQUE NOT NULL,

        is_active BOOLEAN DEFAULT true,

        age INTEGER CHECK (age >= 18),

        created_at TIMESTAMP DEFAULT NOW()
    );

INSERT INTO basics.accounts (full_name, email, age)
VALUES ('John' ,'john@gmail.com',22);

-- SELECT * FROM basics.accounts


-- INSERT INTO basics.accounts (email, age)
-- VALUES ( 'missingname@gmail.com',22);

INSERT INTO basics.accounts (full_name, email, age)
VALUES ('duplicate email user' ,'john@gmail.com',24);