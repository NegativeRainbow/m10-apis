git### Exercise 5 ###
library(jsonlite)
library(dplyr)

# Write a function that allows you to specify a movie, then does the following:
movieSummary <- function(movie){
  movie <- "Kubo and the Two Strings"
  # Replace all of the spaces in your movie title with plus signs (+)
  movie.no.spaces <- gsub(" ", "+", movie)
  
  # Construct a search query using YOUR api key
  baseURL <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?"
  api.key <- "&api-key=42a4649b3ebb4dc48059a5804d3d6768"
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  request <- paste0(baseURL, "?query=", movie.no.spaces, api.key)
  
  # Request data using your search query
  data <- fromJSON(request)$results
  # What type of variable does this return?
  
  # Flatten the data stored in the `$results` key of the data returned to you
  data <- flatten(data)
  
  # From the most recent review, store the headline, short summary, and link to full article each in their own variables
  
  
  # Return an list of the three pieces of information from above
  
}
# Test that your function works with a movie of your choice

