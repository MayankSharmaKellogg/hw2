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

# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model


# 4. in terminal, execute the migration file
# rails db:migrate

# 5. check the schema to confirm the change


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_studio = Studio.new
new_studio["name"] = "Warner Bros."



new_movie = Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = 2005
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = 1
new_movie.save

new_movie = Movie.new
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = 2008
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = 1
new_movie.save

new_movie = Movie.new
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = 2012
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = 1
new_movie.save

puts "movies: #{Movie.all.count}" # expected output - movies: 3

-- Batman Begins

new_actor = actor.new
new_actor["name"] = "Christian Bale"
new_movie.save

new_actor["name"] = "Michael Caine"
new_movie.save

new_actor["name"] = "Liam Neeson"
new_movie.save

new_actor["name"] = "Katie Holmes"
new_movie.save

new_actor["name"] = "Gary Oldman"
new_movie.save



new_role = role.new
new_role["movie_id"] = 1
new_role["actor_id"] = 1
new_role["character_name"] = "Bruce Wayne"
new_role.save


new_role = role.new
new_role["movie_id"] = 1
new_role["actor_id"] = 2
new_role["character_name"] = "Alfred"
new_role.save

new_role = role.new
new_role["movie_id"] = 1
new_role["actor_id"] = 3
new_role["character_name"] = "Ra's Al Ghul"
new_role.save

new_role = role.new
new_role["movie_id"] = 1
new_role["actor_id"] = 4
new_role["character_name"] = "Rachel Dawes"
new_role.save

new_role = role.new
new_role["movie_id"] = 1
new_role["actor_id"] = 5
new_role["character_name"] = "Commissioner Gordon"
new_role.save



-- The Dark Knight

new_actor = actor.new
new_actor["name"] = "Heath Ledger"
new_movie.save

new_actor = actor.new
new_actor["name"] = "Aaron Eckhart"
new_movie.save

new_actor = actor.new
new_actor["name"] = "Maggie Gyllenhaal"
new_movie.save



new_role = role.new
new_role["movie_id"] = 2
new_role["actor_id"] = 1
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role = role.new
new_role["movie_id"] = 2
new_role["actor_id"] = 6
new_role["character_name"] = "Joker"
new_role.save

new_role = role.new
new_role["movie_id"] = 2
new_role["actor_id"] = 7
new_role["character_name"] = "Harvey Dent"
new_role.save

new_role = role.new
new_role["movie_id"] = 2
new_role["actor_id"] = 2
new_role["character_name"] = "Alfred"
new_role.save

new_role = role.new
new_role["movie_id"] = 2
new_role["actor_id"] = 8
new_role["character_name"] = "Rachel Dawes"
new_role.save

-- The Dark Knight Rises

new_actor = actor.new
new_actor["name"] = "Tom Hardy"
new_movie.save

new_actor = actor.new
new_actor["name"] = "Joseph Gordon-Levitt"
new_movie.save

new_actor = actor.new
new_actor["name"] = "Anne Hathaway"
new_movie.save



new_role = role.new
new_role["movie_id"] = 3
new_role["actor_id"] = 1
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role = role.new
new_role["movie_id"] = 3
new_role["actor_id"] = 5
new_role["character_name"] = "Commissioner Gordon"
new_role.save

new_role = role.new
new_role["movie_id"] = 3
new_role["actor_id"] = 9
new_role["character_name"] = "Bane"
new_role.save

new_role = role.new
new_role["movie_id"] = 3
new_role["actor_id"] = 10
new_role["character_name"] = "John Blake"
new_role.save

new_role = role.new
new_role["movie_id"] = 3
new_role["actor_id"] = 11
new_role["character_name"] = "Selina Kyle"
new_role.save


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

