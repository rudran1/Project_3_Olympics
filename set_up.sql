 CREATE TABLE Olympic_host (
  country_year VARCHAR (30) PRIMARY KEY,
  game_location VARCHAR(50) NOT NULL,
  game_season VARCHAR(30) NOT NULL,
  game_year INTEGER NOT NULL
   
);


-- Create a new table
CREATE TABLE teams (
  team_id SERIAL  Primary Key,
  discipline_title VARCHAR(50) NOT NULL,
  event VARCHAR(50) NOT NULL,
  country_year VARCHAR (30) NOT NULL,
  country VARCHAR(50) NOT NULL,
  CONSTRAINT fk_country_year FOREIGN KEY (country_year)
  REFERENCES Olympic_host (country_year)

);

-- Create a new table
CREATE TABLE results (
  medal_id SERIAL PRIMARY KEY,
  team_id Serial NOT NULL,
  event_title VARCHAR(50) NOT NULL,
  country_name VARCHAR(50) NOT NULL,
  value_unit INTERVAL  NOT NULL,
   medal_type VARCHAR(30) NOT NULL,
  CONSTRAINT fk_team_id FOREIGN KEY (team_id)
  REFERENCES teams (team_id)
	);