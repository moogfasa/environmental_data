
?sample.int
?rnorm

#create_and_print_vec = function(n, min = , max =)
#{
  
  #for (i in xxx)
  #{
   # print(paste0(
  #"The element at index ", i, " is ", create_and_print_vec(n, min = , max =)[i])
  #}
#}




create_and_print_vec = function(n, min = , max = )
{
 for (i in sample(min, n, replace = TRUE):sample(max, n, replace = TRUE))
  {
    print(paste0("The element at index ", i, " is ", create_and_print_vec()[i]))
  }
}

#create_and_print_vec(20, min = , max = )




# create_and_print_vec = function(n, min = , max =)
#{
#  min_max = sample.int(c(min, max), n, replace = TRUE)
#}

#create_and_print_vec(10, min = 200, max = 1000)
