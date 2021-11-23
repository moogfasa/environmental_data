# print_number = function(n)
# {
#   print(paste0("The value of the number is ", n))
# }
# 
# print_number(765)
# 
# 
# 
# create_and_print_vec = function(n, min, max)
# {
#   vec_1 = min:max
#   for (i in n:vec_1)
#   {
#     print(paste0("The element at index ", i, " is ", vec_1[i]))
#   }
# }
# 
# create_and_print_vec(234, min = 1, max = 10)
# 
# 
# 
# 
# create_and_print_vec = function(n, min = , max =)
# {
#   vec_1 = sample(min = :max = , 20, replace = TRUE)
#   for (i in vec_1)
#   {
#     print(paste0("The element at index ", i, " is ", vec_1[i])
#   }  
# }
# 
# create_and_print_vec(20, min = , max =)
# 
# ?sample
# 
# n = 10
# vec_1 = sample(floor(rnorm(1)):floor(rnorm(10)), n, replace =TRUE)
# vec_1
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
create_and_print_vec = function(n, min = , max =)
{
  vec_1 = sample(min, n, replace = TRUE)
  vec_2 = sample(max, n, replace = TRUE)
  for (i in vec_1:vec_2)
  {
    print(paste0("The element at index ", i, " is ", create_and_print_vec()[i]))
  }
}

create_and_print_vec(10, min = 1, max = 10)

create_and_print_vec = function(n, min = , max =)
{
  min = sample(floor(rnorm(1)))
  max = sample(floor(rnorm(10)))
  return(min:max)
}


