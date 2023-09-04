-- Create a table to store information about users
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    is_employee BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert sample employee data
INSERT INTO users (first_name, last_name, email, password_hash, is_employee)
VALUES
    ('John', 'Doe', 'john.doe@example.com', 'password_hash_1', TRUE),
    ('Jane', 'Smith', 'jane.smith@example.com', 'password_hash_2', TRUE),
    ('Robert', 'Johnson', 'robert.johnson@example.com', 'password_hash_3', TRUE);

-- Insert sample customer data
INSERT INTO users (first_name, last_name, email, password_hash, is_employee)
VALUES
    ('Alice', 'Brown', 'alice.brown@example.com', 'password_hash_4', FALSE),
    ('David', 'Wilson', 'david.wilson@example.com', 'password_hash_5', FALSE),
    ('Eva', 'Davis', 'eva.davis@example.com', 'password_hash_6', FALSE),
    ('Michael', 'Lee', 'michael.lee@example.com', 'password_hash_7', FALSE),
    ('Olivia', 'Miller', 'olivia.miller@example.com', 'password_hash_8', FALSE),
    ('Sophia', 'Taylor', 'sophia.taylor@example.com', 'password_hash_9', FALSE);