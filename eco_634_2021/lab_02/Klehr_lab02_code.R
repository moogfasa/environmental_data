#for loop code

for (i in 1:10)
{
  print(i)
}

#create vec_1

n = 12345
vec_1 = sample(12, n, replace = TRUE)
head(vec_1)

#Use a logical test operator to create a Boolean vector (called vec_2) whose entries are TRUE 
#if the corresponding entry in vec_1 is 3 and FALSE otherwise.

vec_2 = (vec_1 == 3) 

vec_1[vec_2]

#Self test: you can use vec_2 to retrieve all of the 3 elements of vec_1 using the following:

#vec_1[vec_2]


#sample( ) help
?sample

# Q8 of lab 02
n = 17
vec_1 = sample(10, n, replace = TRUE)
vec_1

for (i in 1:n)
{
  print(paste0("The element of vec_1 at index ", i, " is ", vec_1[i]))
}  


#troubleshoot function


create_and_print_vec = function(n, min = , max = )
{
  min_max = runif(20, min = 1, max = 10)
  for (i in min_max)
  {  print(paste0(
      "The element at index ", i, " is ", create_and_print_vec(20, min = , max =)[i]))
  }      
}  



floor(runif(20, min = 1, max = 10))


create_and_print_vec = function(n, min = , max = )
{
  for (i in sample(c(min:max), n, replace = TRUE))
  {
    print(paste0("The element at index ", i, " is ", create_and_print_vec(20, min = , max = )[i]))
  }
}
create_and_print_vec(10, min = 100, max = 2000)  

  

?rnorm


