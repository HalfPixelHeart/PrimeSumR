max_num <- 86226508

prime_list <- seq(3,max_num,2)
l <- length(prime_list)

for (i in 1:l){
  n <- prime_list[i]
  
  if (n==0) {next}
  if (n^2 > max_num) {break}
  
  prime_list[seq(((n^2)-1)/2, l, n)] <- 0
  
}

answer <- sum(prime_list) + 2

answer