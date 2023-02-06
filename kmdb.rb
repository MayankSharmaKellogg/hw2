# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all

Rails.logger.info "------------------------"
Rails.logger.info "----- FRESH START! -----"
Rails.logger.info "------------------------"

# Generate models and tables, according to the domain model.
# TODO!


# - Add model and table for the Company entity in our domain model

# 1. in terminal, generate the model and table for Company

rails generate model Movie

id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
year_released INTEGER,
rated TEXT,
studio_id INTEGER

  t.string "title"
  t.string "year_released"
  t.string "rated"
  t.string "studio_id"

rails generate model Studio
name TEXT

rails generate model Actor
name TEXT

rails generate model Role
id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id INTEGER,
  actor_id INTEGER,
  character_name TEXT



# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model


# 4. in terminal, execute the migration file
# rails db:migrate

# 5. check the schema to confirm the change


new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save

puts "companies: #{Company.all.count}" # companies: 1



# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

-- Turns column mode on but headers off
.mode columns
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS roles;

-- Create new tables, according to your domain model
CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released INTEGER,
  rated TEXT,
  studio_id INTEGER
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id INTEGER,
  actor_id INTEGER,
  character_name TEXT
);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
INSERT INTO studios (name) VALUES ("Warner Bros."); -- 1

INSERT INTO movies (title, year_released, rated, studio_id)
VALUES ("Batman Begins", 2005, "PG-13", 1);

INSERT INTO movies (title, year_released, rated, studio_id)
VALUES ("The Dark Knight", 2008, "PG-13", 1);

INSERT INTO movies (title, year_released, rated, studio_id)
VALUES ("The Dark Knight Rises", 2012, "PG-13", 1);

-- Batman Begins
INSERT INTO actors (name) VALUES ("Christian Bale"); -- 1
INSERT INTO actors (name) VALUES ("Michael Caine"); -- 2
INSERT INTO actors (name) VALUES ("Liam Neeson");  -- 3
INSERT INTO actors (name) VALUES ("Katie Holmes");  -- 4
INSERT INTO actors (name) VALUES ("Gary Oldman");  -- 5

INSERT INTO roles (movie_id, actor_id, character_name) VALUES (1, 1, "Bruce Wayne");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (1, 2, "Alfred");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (1, 3, "Ra's Al Ghul");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (1, 4, "Rachel Dawes");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (1, 5, "Commissioner Gordon");

-- The Dark Knight
INSERT INTO actors (name) VALUES ("Heath Ledger"); -- 6
INSERT INTO actors (name) VALUES ("Aaron Eckhart"); -- 7
INSERT INTO actors (name) VALUES ("Maggie Gyllenhaal"); -- 8

INSERT INTO roles (movie_id, actor_id, character_name) VALUES (2, 1, "Bruce Wayne");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (2, 6, "Joker");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (2, 7, "Harvey Dent");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (2, 2, "Alfred");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (2, 8, "Rachel Dawes");

-- The Dark Knight Rises
INSERT INTO actors (name) VALUES ("Tom Hardy"); -- 9
INSERT INTO actors (name) VALUES ("Joseph Gordon-Levitt"); -- 10
INSERT INTO actors (name) VALUES ("Anne Hathaway"); -- 11

INSERT INTO roles (movie_id, actor_id, character_name) VALUES (3, 1, "Bruce Wayne");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (3, 5, "Commissioner Gordon");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (3, 9, "Bane");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (3, 10, "John Blake");
INSERT INTO roles (movie_id, actor_id, character_name) VALUES (3, 11, "Selina Kyle");

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
SELECT movies.title, movies.year_released, movies.rated, studios.name 
FROM movies INNER JOIN studios ON studios.id = movies.studio_id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output
SELECT movies.title, actors.name, roles.character_name 
FROM roles 
INNER JOIN movies on movies.id = roles.movie_id 
INNER JOIN actors ON actors.id = roles.actor_id;

