CREATE TABLE IF NOT EXISTS funny_jokes (
    id INTEGER PRIMARY KEY, -- Primary key gör så att data inte dupliceras
    joke_text VARCHAR, -- VARCHAR = string
    rating INTEGER
);

SELECT * FROM funny_jokes; 
-- * gör att man väljer alla kolumner från funny_jokes 
