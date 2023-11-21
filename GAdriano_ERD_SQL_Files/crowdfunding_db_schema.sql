-- Create Contacts Table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

-- Create Category Table
CREATE TABLE Category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Create Subcategory Table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Create Campaign Table
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(3) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);


