
----------------------

 CREATE TABLE Olympic_host (
  country_year VARCHAR (30) PRIMARY KEY,
  game_location VARCHAR(50) NOT NULL,
  game_season VARCHAR(30) NOT NULL,
  game_year INTEGER NOT NULL
   
);


-- Create a new table
CREATE TABLE teams (
  team_id SERIAL Not Null Primary Key,
  discipline_title VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  event VARCHAR(50) NOT NULL,
  medal_type VARCHAR(30) NOT NULL,
  country_year VARCHAR (30) NOT NULL,
  CONSTRAINT fk_country_year FOREIGN KEY (country_year)
  REFERENCES Olympic_host (country_year)

);

-- Create a new table
CREATE TABLE results (
  race_id SERIAL PRIMARY KEY,
  discipline_title VARCHAR (50) NOT NULL,
  event_title VARCHAR(50) NOT NULL,
  country_year VARCHAR (30) NOT NULL,
  medal_type VARCHAR(30) NOT NULL,
  country_name VARCHAR(50) NOT NULL,
  value_unit INTERVAL (30) NOT NULL,
  CONSTRAINT fk_event_title FOREIGN KEY (discipline_title)
  REFERENCES teams (discipline_title)
	);
	
Drop table Olympic_host;
Drop table teams;
Drop table results;

select * from olympic_host