#Christine Hoang

library(tidyverse)
#Read the data from the CSV file into a tibble and display it.
ramen_ratings <- read_csv("ramen-ratings.csv")
ramen_ratings

ramen_ratings %>% str(strict.width = "cut")

#Rename the Stars column to Rating.
ramen_ratings <- ramen_ratings %>% rename(Rating = Stars)

#Convert the Style column to the factor type.
ramen_ratings <- ramen_ratings %>% mutate(Style = factor(Style))

#Drop the Country column.
ramen_ratings <- ramen_ratings %>% select(-Country)

#Rename the Brand column to Company and the Variety column to Product.
ramen_ratings <- ramen_ratings %>% rename(Company = Brand, Product = Variety)

#Display the tibble to make sure your code worked correctly. Also, make a note of the number of rows in the tibble.
#2577 rows
ramen_ratings
length(ramen_ratings$Company)

#Use the duplicated() and filter() functions to display all duplicate rows.
ramen_ratings %>% filter (duplicated(ramen_ratings))

#Drop all duplicate rows. 
#Then, display the tibble to get a count of the number of rows, and compare 
#that with the original number of rows to see how many were dropped.
ramen_ratings <-ramen_ratings %>% unique()
ramen_ratings

length(ramen_ratings$Company)
#2571 rows are left. 6 rows were dropped

#Display all rows that have missing values.
ramen_ratings %>% filter(!complete.cases(ramen_ratings))

#Drop any rows that have missing values.
ramen_ratings<-ramen_ratings %>% filter(complete.cases(ramen_ratings))

#Display the tibble to make sure your code worked correctly.
ramen_ratings
length(ramen_ratings$Company)
#2569 rows are left. 2 rows were dropped.


#Read the data from the CSV file into a tibble and display the first five rows.
avocados <- read_csv("avocado.csv")
avocados

#Use the str() function to view the column names and data types for the table.
avocados %>% str(strict.width = "cut")

#Display the value counts for the region column, and note that one of the regions is TotalUS.






