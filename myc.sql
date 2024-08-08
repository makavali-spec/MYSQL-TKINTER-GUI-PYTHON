CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL UNIQUE,
    password_hash VARCHAR(45) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Listings (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    seller_id INTEGER NOT NULL,
    title VARCHAR(45) NOT NULL,
    description VARCHAR(45),
    starting_bid DECIMAL(10, 2) NOT NULL,
    current_bid DECIMAL(10, 2),
    category VARCHAR(45),
    end_date TIMESTAMP NOT NULL,
    status VARCHAR(45) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES Users(id)
);

CREATE TABLE Bids (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    listing_id INTEGER NOT NULL,
    bidder_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (listing_id) REFERENCES Listings(id),
    FOREIGN KEY (bidder_id) REFERENCES Users(id)
);

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    listing_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    content VARCHAR(45) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (listing_id) REFERENCES Listings(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Watchlist (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    listing_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (listing_id) REFERENCES Listings(id)
);
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL UNIQUE,
    password_hash VARCHAR(45) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Listings (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    seller_id INTEGER NOT NULL,
    title VARCHAR(45) NOT NULL,
    description VARCHAR(45),
    starting_bid DECIMAL(10, 2) NOT NULL,
    current_bid DECIMAL(10, 2),
    category VARCHAR(45),
    end_date TIMESTAMP NOT NULL,
    status VARCHAR(45) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES Users(id)
);

CREATE TABLE Bids (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    listing_id INTEGER NOT NULL,
    bidder_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (listing_id) REFERENCES Listings(id),
    FOREIGN KEY (bidder_id) REFERENCES Users(id)
);

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    listing_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    content VARCHAR(45) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (listing_id) REFERENCES Listings(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Watchlist (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    listing_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (listing_id) REFERENCES Listings(id)
);
