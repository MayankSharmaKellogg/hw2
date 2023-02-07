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

# Generate models and tables, according to the domain model.
# TODO!

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



movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG-13"
movie["studio_id"] = studio["id"]
movie.save

movie1 = Movie.new
movie1["title"] = "The Dark Knight"
movie1["year_released"] = 2008
movie1["rated"] = "PG-13"
movie1["studio_id"] = studio["id"]
movie1.save

movie2 = Movie.new
movie2["title"] = "The Dark Knight Rises"
movie2["year_released"] = 2012
movie2["rated"] = "PG-13"
movie2["studio_id"] = studio["id"]
movie2.save

#puts "movies: #{Movie.all.count}" # expected output - movies: 3

#Actors in Batman Begins

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor1 = Actor.new
new_actor1["name"] = "Michael Caine"
new_actor1.save

new_actor2 = Actor.new
new_actor2["name"] = "Liam Neeson"
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Katie Holmes"
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Gary Oldman"
new_actor4.save

# Actors in The Dark Knight

new_actor5 = Actor.new
new_actor5["name"] = "Heath Ledger"
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"] = "Aaron Eckhart"
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Maggie Gyllenhaal"
new_actor7.save

# Actors in The Dark Knight Rises

new_actor8 = Actor.new
new_actor8["name"] = "Tom Hardy"
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = "Joseph Gordon-Levitt"
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = "Anne Hathaway"
new_actor10.save



movie_1 = Movie.find_by({"title" => "Batman Begins"})
movie_2 = Movie.find_by({"title" => "The Dark Knight"})
movie_3 = Movie.find_by({"title" => "The Dark Knight Rises"})


actor_1 = Actor.find_by({"name" => "Christian Bale"})
actor_2 = Actor.find_by({"name" => "Michael Caine"})
actor_3 = Actor.find_by({"name" => "Liam Neeson"})
actor_4 = Actor.find_by({"name" => "Katie Holmes"})
actor_5 = Actor.find_by({"name" => "Gary Oldman"})
actor_6 = Actor.find_by({"name" => "Heath Ledger"})
actor_7 = Actor.find_by({"name" => "Aaron Eckhart"})
actor_8 = Actor.find_by({"name" => "Maggie Gyllenhaal"})
actor_9 = Actor.find_by({"name" => "Tom Hardy"})
actor_10 = Actor.find_by({"name" => "Joseph Gordon-Levitt"})
actor_11 = Actor.find_by({"name" => "Anne Hathaway"})

# Roles in Batman Begins

role = Role.new
role["movie_id"] = movie_1["id"]
role["actor_id"] = actor_1["id"]
role["character_name"] = "Bruce Wayne"
role.save


role1 = Role.new
role1["movie_id"] = movie_1["id"]
role1["actor_id"] = actor_2["id"]
role1["character_name"] = "Alfred"
role1.save

role2 = Role.new
role2["movie_id"] = movie_1["id"]
role2["actor_id"] = actor_3["id"]
role2["character_name"] = "Ra's Al Ghul"
role2.save

role3 = Role.new
role3["movie_id"] = movie_1["id"]
role3["actor_id"] = actor_4["id"]
role3["character_name"] = "Rachel Dawes"
role3.save

role4 = Role.new
role4["movie_id"] = movie_1["id"]
role4["actor_id"] = actor_5["id"]
role4["character_name"] = "Commissioner Gordon"
role4.save


# Roles in The Dark Knight

role5 = Role.new
role5["movie_id"] = movie_2["id"]
role5["actor_id"] = actor_1["id"]
role5["character_name"] = "Bruce Wayne"
role5.save

role6 = Role.new
role6["movie_id"] = movie_2["id"]
role6["actor_id"] = actor_6["id"]
role6["character_name"] = "Joker"
role6.save

role7 = Role.new
role7["movie_id"] = movie_2["id"]
role7["actor_id"] = actor_7["id"]
role7["character_name"] = "Harvey Dent"
role7.save

role8 = Role.new
role8["movie_id"] = movie_2["id"]
role8["actor_id"] = actor_2["id"]
role8["character_name"] = "Alfred"
role8.save

role9 = Role.new
role9["movie_id"] = movie_2["id"]
role9["actor_id"] = actor_8["id"]
role9["character_name"] = "Rachel Dawes"
role9.save



# Roles in The Dark Knight Rises

role10 = Role.new
role10["movie_id"] = movie_3["id"]
role10["actor_id"] = actor_1["id"]
role10["character_name"] = "Bruce Wayne"
role10.save

role11 = Role.new
role11["movie_id"] = movie_3["id"]
role11["actor_id"] = actor_5["id"]
role11["character_name"] = "Commissioner Gordon"
role11.save

role12 = Role.new
role12["movie_id"] = movie_3["id"]
role12["actor_id"] = actor_9["id"]
role12["character_name"] = "Bane"
role12.save

role12 = Role.new
role12["movie_id"] = movie_3["id"]
role12["actor_id"] = actor_10["id"]
role12["character_name"] = "John Blake"
role12.save

role13 = Role.new
role13["movie_id"] = movie_3["id"]
role13["actor_id"] = actor_11["id"]
role13["character_name"] = "Selina Kyle"
role13.save


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
    dstudio = Studio.find_by({"id" => movie["studio_id"]})
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
    movie = Movie.find_by({"id" => role["movie_id"]})
    dmovie_title = movie["title"]
    actor = Actor.find_by({"id" => role["actor_id"]})
    dactor_name = actor["name"]
    dcharacter_name = role["character_name"]
    puts "#{dmovie_title}   #{dactor_name}   #{dcharacter_name}"
end

#The SQL statement for the cast output
#SELECT movies.title, actors.name, roles.character_name 
#FROM roles 
#INNER JOIN movies on movies.id = roles.movie_id 
#INNER JOIN actors ON actors.id = roles.actor_id;

