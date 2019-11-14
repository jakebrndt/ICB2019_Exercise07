# 1. Write a function that returns the odd rows of any data frame passed as an argument 


getOdd <- function(x){
  return(x[seq(from = 1, to = nrow(x), by = 2),]) #return rows sequenced from 1 in steps of 2 to the total number of rows in the data set
}

#loading in data set for example
iris <- read.csv(file="iris.csv")
getOdd(iris) # tested on iris data

# 2. Write functions that accomplish tasks from last week's exercise

# Part 1: return the number of observations for a given species included in the dataset: 

numberOfSpecies <- function(x, species){ #defined function with two inputs, the data set and the species name of interest
  speciesOfInterest <- (x[x$Species==species,]) # stores all the rows in data set x where the Species column contains the species inputted in new variable
  nrow(speciesOfInterest) # returns number of rows in this subsetted dataset
}

numberOfSpecies(iris,"setosa") # tested with iris data set

# Part 2: Return a data frame for flowers with Sepal.Width greater than a value specified by the user

BigSepals <- function(x, sepal.threshold){ # defined function with two inputs: data frame and the threshold value for Sepal.Width; flowers with width's above the threshold will be returned 
  return(x[x$Sepal.Width > sepal.threshold ,]) # return all the rows of x where Sepal.Width is greater than the input sepal.threshold
}

BigSepals(iris, 3) # testing with iris data set

# Part 3: Write the data for a given species to a comma-delimited file with the given species name as the file name

write.species.csv <- function(x, species){
  species.of.interest <- (x[x$Species==species,]) # stores all the rows in data set x where the Species column contains the species inputted in new variable
  name <- paste(species, ".csv", sep="") # defines file name using paste function as species.csv
  write.csv(species.of.interest, file = name) #writes data from species of interest to csv file with the name defined in previous variable
}

write.species.csv(iris, "setosa") # tested with iris data set


