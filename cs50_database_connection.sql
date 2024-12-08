CREATE DATABASE recipes;

CREATE TABLE recipes(
	recipe_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	ingredients TEXT NOT NULL
	diretions TEXT NOT NULL
);

COPY recipes(name, ingredients, directions)
FROM '/Users/Shared/recipe_data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM recipes;
