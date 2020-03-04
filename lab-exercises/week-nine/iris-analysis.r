#Part 2 - Introduction to R with iris dataset
#Frida Perez

# The datasets package needs to be loaded to access our data 
# For a full list of these datasets, type library(help = "datasets")
library(datasets)
data(iris)
summary(iris) #gives descriptive stats
 #getting the columns of the dataset
names(iris)

#upper 
toupper(names(iris))

# The dplyr package
names(iris) <- tolower(names(iris))
library(dplyr)

# filter() the data for species virginica

# filter() the data for species virginica
virginica <- filter(iris, species == "virginica")
head(virginica) # This dispalys the first six rows

# quoatations must surround a character data type
# here we filter for miltiple conditions 
sepalLength6 <- filter(iris, species == "virginica", sepal.length > 6)
tail(sepalLength6) # compare this to head()

#if we want to use the subset() function then the syntax would be 

sepalLength6<-subset(iris, species== "virginica" & sepal.length > 6) 
 # Using the select() function
# select() the specified columns
selected <- select(iris, sepal.length, sepal.width, petal.length)
# select all columns from sepal.length to petal.length
selected2 <- select(iris, sepal.length:petal.length)
head(selected, 3) #takes three rows
 #using mutate
# create a new column that stores logical values for sepal.width greater than half of sepal.length
newCol <- mutate(iris, greater.half = sepal.width > 0.5 * sepal.length)
tail(newCol)

#challenege: Out of the 150 flowers, find how many satisfy this condition. Hint: use the sum() function on newCol$greater.half
sum(newCol$greater.half)
# 66 flowers satisfy the greater.half conditions

# Other functions
newCol <- arrange(newCol, petal.width)
head(newCol)

#pipeline %>%
#filtering and arranging the data
arr.virg <- newCol %>% filter(species == "virginica") %>%
  arrange(sepal.width)
arr.virg[30:35,] # will show us rows 30 through 35 and all columns
#getting the mean sepal.length for the virginca species
summarise(arr.virg, mean.length = mean(sepal.length, na.rm = TRUE))


# Challenge2: The standard deviation gives how much individual values vary from the mean. Find the standard deviation of sepal.length
summarise(sepal.length,sd.length=sd(sepal.length,na.rm=TRUE))
          
#Visualization

plot(iris)


# use ?plot to read more about other arguments
plot(iris$sepal.width, iris$sepal.length)


# ?hist will give you details on more arguments
hist(iris$sepal.width)



