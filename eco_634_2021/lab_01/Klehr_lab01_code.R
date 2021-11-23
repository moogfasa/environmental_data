#create a numeric vector of length 3 called my_vec. 
#It should contain the integers from 1 to 3. 

my_vec = (1:3)
my_vec

#Build a matrix using the following code:
#mat_1 = matrix(my_vec)

mat_1 = matrix(my_vec)
mat_1

#Write R code to retrieve the element of mat_1 that has a value of 3

mat_1[3]
mat_1[3, ]

#Create a matrix mat_2 that has two rows and three columns using my_vec. 
#Do not use the c() or rep() functions

mat_2 = matrix(my_vec, nrow = 2,
               ncol = 3)
mat_2

#Create a matrix mat_3 that has three rows and two columns using my_vec. 
#Do not use the c() or rep() functions

mat_3 = matrix(my_vec, nrow = 3, 
               ncol = 2)
mat_3

#byrow

mat_3 = matrix(my_vec, nrow = 3, 
               ncol = 2, byrow = TRUE)
mat_3

#Create a matrix, mat_4, with a number of elements that is not a multiple of 3 and paste the code into the editor

mat_4 = matrix(my_vec, nrow = 4, 
               ncol = 5)
mat_4

#Create a list, named my_list_1 with following three elements:
# 1. first element is numeric: 5.2
# 2. second element is a string “five point two”
# 3. third element is a vector of all integers from 0 to 5.

my_list_1 = list(5.2, "five point two", 0:5)

#Name the elements in my_list_1:
#1. “two”
#2. “one”
#3. “three”

names(my_list_1) = c("two", "one", "three")
my_list_1

#Run the following lines of code.

my_list_1[[1]]
my_list_1[[as.numeric("1")]]
my_list_1[["1"]]
my_list_1[["one"]]
my_list_1$one
my_list_1$"one"
my_list_1$1
my_list_1$"1"









