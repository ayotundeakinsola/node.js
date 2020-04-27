CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email) VALUES
('ruth@yahoo.com'), ('mike@gmail.com');



SELECT 
    CASE 
        WHEN email LIKE '%@yahoo.com%' THEN 'yahoo'
        WHEN email LIKE '%@gmail.com%' THEN 'gmail'
        WHEN email LIKE '%@hotmail.com%' THEN 'hotmail'
        ELSE 'other'
        END AS provider,
        COUNT(*) as total_users
        FROM users
        GROUP by provider;