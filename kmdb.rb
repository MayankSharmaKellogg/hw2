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

studio = Studio.new
studio["name"] = "Warner Bros."
studio.save

studio_wb = Studio.find_by({"name" => "Warners Bros."})

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG-13"
movie["studio_id"] = studio_wb["id"]
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["rated"] = "PG-13"
movie["studio_id"] = studio_wb["id"]
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["rated"] = "PG-13"
movie["studio_id"] = studio_wb["id"]
movie.save

#puts "movies: #{Movie.all.count}" # expected output - movies: 3

#Actors in Batman Begins

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Michael Caine"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Liam Neeson"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Katie Holmes"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Gary Oldman"
new_actor.save

# Actors in The Dark Knight

new_actor = Actor.new
new_actor["name"] = "Heath Ledger"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Aaron Eckhart"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Maggie Gyllenhaal"
new_actor.save

# Actors in The Dark Knight Rises

new_actor = Actor.new
new_actor["name"] = "Tom Hardy"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Joseph Gordon-Levitt"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Anne Hathaway"
new_actor.save



movie_1 = Movie.where({"title" => "Batman Begins"})
movie_2 = Movie.where({"title" => "Batman Begins"})
movie_3 = Movie.where({"title" => "Batman Begins"})


actor_1 = Actor.where({"name" => "Christian Bale"})
actor_2 = Actor.where({"name" => "Michael Caine"})
actor_3 = Actor.where({"name" => "Liam Neeson"})
actor_4 = Actor.where({"name" => "Katie Holmes"})
actor_5 = Actor.where({"name" => "Gary Oldman"})
actor_6 = Actor.where({"name" => "Heath Ledger"})
actor_7 = Actor.where({"name" => "Aaron Eckhart"})
actor_8 = Actor.where({"name" => "Maggie Gyllenhaal"})
actor_9 = Actor.where({"name" => "Tom Hardy"})
actor_10 = Actor.where({"name" => "Joseph Gordon-Levitt"})
actor_11 = Actor.where({"name" => "Anne Hathaway"})

# Roles in Batman Begins

role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_1["id"]
role["character_name"] = "Bruce Wayne"
role.save


role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_2["id"]
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_3["id"]
role["character_name"] = "Ra's Al Ghul"
role.save

role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_4["id"]
role["character_name"] = "Rachel Dawes"
role.save

role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_5["id"]
role["character_name"] = "Commissioner Gordon"
role.save


# Roles in The Dark Knight

role = Role.new
role["movie_id"] = movie_2["id"]
role["actor_id"] = actor_1["id"]
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = movie_2["id"]
role["actor_id"] = actor_6["id"]
role["character_name"] = "Joker"
role.save

role = Role.new
role["movie_id"] = movie_2["id"]
role["actor_id"] = actor_7["id"]
role["character_name"] = "Harvey Dent"
role.save

role = Role.new
role["movie_id"] = movie_2["id"]
role["actor_id"] = actor_2["id"]
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = movie_2["id"]
role["actor_id"] = actor_8["id"]
role["character_name"] = "Rachel Dawes"
role.save



# Roles in The Dark Knight Rises

role = Role.new
role["movie_id"] = movie_3["id"]
role["actor_id"] = actor_1["id"]
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = movie_3["id"]
role["actor_id"] = actor_5["id"]
role["character_name"] = "Commissioner Gordon"
role.save

role = Role.new
role["movie_id"] = movie_3["id"]
role["actor_id"] = actor_9["id"]
role["character_name"] = "Bane"
role.save

role = Role.new
role["movie_id"] = movie_3["id"]
role["actor_id"] = actor_10["id"]
role["character_name"] = "John Blake"
role.save

role = Role.new
role["movie_id"] = movie_3["id"]
role["actor_id"] = actor_11["id"]
role["character_name"] = "Selina Kyle"
role.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# All rows in movies table
all_movies = Movie.all


# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!


#	Query the movies data and loop through the results to display the movies output.
#	TODO!

for movie in all_movies
    dtitle = movie["title"]
    dyear_released = movie["year_released"]
    drated = movie["rated"]
    dstudio = Studio.where({"id" => movie["studio_id"]})
    dstudio_name = studio["name"]
    puts "#{dtitle}     #{dyear_released}       #{drated}       #{dstudio_name}"
end

# The SQL statement for the movies output
#SELECT movies.title, movies.year_released, movies.rated, studios.name 
#FROM movies INNER JOIN studios ON studios.id = movies.studio_id;


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""


# All rows in roles table
all_roles = Role.all

#	Query the cast data and loop through the results to display the cast output for each movie.
#	TODO!

for role in all_roles
    movie = Movie.where({"id" => role["movie_id"]})
    dmovie_title = movie["title"]
    actor = Actor.where({"id" => role["actor_id"]})
    dactor_name = actor["name"]
    dcharacter_name = role["character_name"]
    puts "#{dmovie_title}   #{dactor_name}   #{dcharacter_name}"
end

#The SQL statement for the cast output
#SELECT movies.title, actors.name, roles.character_name 
#FROM roles 
#INNER JOIN movies on movies.id = roles.movie_id 
#INNER JOIN actors ON actors.id = roles.actor_id;

