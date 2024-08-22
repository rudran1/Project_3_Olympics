  CREATE TABLE Olympic_host (
  country_year VARCHAR (30) PRIMARY KEY,
  game_location VARCHAR(10) NOT NULL,
  game_season VARCHAR(30) NOT NULL,
  game_year INTEGER NOT NULL
   
);
-- Create a new table
CREATE TABLE teams (
  discipline_title VARCHAR(30) NOT NULL PRIMARY KEY,
  country VARCHAR(30) NOT NULL,
  event VARCHAR(30) NOT NULL,
  medal_type VARCHAR(30) NOT NULL,
  country_year VARCHAR (30) NOT NULL,
  host_country VARCHAR (30) NOT NULL,
  CONSTRAINT fk_host_country FOREIGN KEY (country_year)
  REFERENCES Olympic_host (country_year)

);

-- Create a new table
CREATE TABLE results (
  race_id SERIAL PRIMARY KEY,
  discipline_title VARCHAR (30) NOT NULL,
  event_title VARCHAR(30) NOT NULL,
  country_year VARCHAR (30) NOT NULL,
  medal_type VARCHAR(30) NOT NULL,
  country_name VARCHAR(30) NOT NULL,
  value_unit INTERVAL (30) NOT NULL,
  CONSTRAINT fk_event_title FOREIGN KEY ( discipline_title)
  REFERENCES teams (discipline_title)
	);