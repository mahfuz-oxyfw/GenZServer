CREATE TABLE IF NOT EXISTS TransactionDutyLog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id VARCHAR(255),
    job VARCHAR(255),
    player_name VARCHAR(255),
    discord_id VARCHAR(255),
    license VARCHAR(255),
    start_time INT,
    end_time INT,
    time_text VARCHAR(255),
    reason VARCHAR(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS dutylog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id VARCHAR(255) NOT NULL,
    job VARCHAR(255) NOT NULL,
    start_time INT NOT NULL,
    end_time INT,
    license VARCHAR(255) NOT NULL
);
