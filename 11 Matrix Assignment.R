# 
# Matrices
# Classwork: 
# 1. Construct a matrix with one row for each movie as An Unexpected Journey, 
# The Desolation of Smaug, The Battle of the Five Armies. The first column is 
# for the US box office revenue (in $), and the second column for the Non-US 
# box office revenue (in $). Name the matrix as hobbit_matrix. US Non-US 
# An Unexpected Journey 460.99 314.40 
# The Desolation of Smaug 290.47 247.90 
# The Battle of the Five Armies 309.31 165.80 
# 2. Calculate the worldwide box office figures for the three movies and put 
# these in the vector named worldwide_vector. 
# 3. Add worldwide_vector as a new column to the hobbit_matrix and assign the 
# result to hobbit_matrix2. Use the cbind() function. 
# 4. Construct a matrix with one row for each movie as The Fellowship of the Ring,
# The Two Towers and The Return of the King. The first column is for the US box 
# office revenue (in $), and the second column for the Non-US box office revenue 
# (in $). Name the matrix as lord_of_the_rings_matrix US Non-US 
# The Fellowship of the Ring 474.51 552.57 
# The Two Towers 310.76 338.72 
# The Return of the King 380.33 468.51
# # Assign to all_hobbit_matrix a new matrix with hobbit_matrix in the first 
# three rows and lord_of_the_rings_matrix in the next three rows. 
# Use the rbind() function. 
# 5. Calculate the total revenue for the US and the non-US region and assign 
# total_revenue_vector. 
# 6. Calculate the following: 
#   a. average Non-US revenue for all movies for all_hobbit_matrix . 
# Assign this average to the non_us_all variable. 
#   b. average US revenue for last 3 movies for all_hobbit_matrix . 
#   Assign this average to the us_lord_of_rings variable 
# 7. Assign the matrix with the estimated number of Non-US and US visitors 
# for the six movies of all_hobbit_matrix to visitors. Assume that the price 
# of a ticket was 5 dollars. 
# 8. After looking at the result of the previous exercise, it was found out that 
# the ticket prices went up over time as per below matrix. Analysis has to be 
# done based on the prices you can find in ticket_prices_matrix. Create 
# ticket_prices_matrix according to following data. US Non-US 
# An Unexpected Journey 3 3 
# The Desolation of Smaug 4 4 
# The Battle of the Five Armies 5 5 
# The Fellowship of the Ring 6 6 
# The Two Towers 7 7 
# The Return of the King 8 8
# a. Assign to visitors the matrix with your estimated number of Non-US and 
# US visitors for the six movies. 
# b. Assign to average_us_visitors the average number of visitors in the US for 
# a all_hobbit_matrix . 
# c. Assign to average_non_us_visitors the average number of visitors in 
# non-US areas for a all_hobbit_matrix .


#1
(hobbit_matrix<-matrix(c(460.99,314.40,290.47,247.90,309.31,165.8),3,2,byrow = T))

dimnames(hobbit_matrix) =list(c("An Unexpected Journey","The desaulation of Smaug",
                               "The Battle of Five Armies"),c(" US (in $)) ","NON US (in  $)"))

hobbit_matrix

#2
(worldwide_vector<- rowSums(hobbit_matrix))
(worldwide_vector<-apply(hobbit_matrix,1,sum))

#3
hobbit_matrix2<-cbind(hobbit_matrix,worldwide_vector);hobbit_matrix2

#4
(lord_of_the_rings_matrix<- matrix(c(474.51,552.57,310.76,338.72,380.33,468.51),
                            3,2,byrow = T, dimnames = list(c("The Felowship of the Ring",
                            "The Two Towers","The Return of the King"),c("US(in $)",
                            "NON US (in $)"))))

(all_hobbit_matrix<- rbind(hobbit_matrix,lord_of_the_rings_matrix))
#5
(total_revenue_vector<-rowSums(all_hobbit_matrix))
all_hobbit_matrix
#6 a
(non_us_all<- mean(all_hobbit_matrix[,2]))

#6 b
(us_lord_of_rings<-mean(all_hobbit_matrix[4:6,1]))

#7
(estimated_visitor<-round(all_hobbit_matrix/5))

#8
ticket_price_matrix<-matrix(c(seq(3,8,1),seq(3,8,1)),6,2);ticket_price_matrix
dimnames(ticket_price_matrix)<- dimnames(all_hobbit_matrix)

ticket_price_matrix<-ticket_price_matrix+5
#a
visitors<-round(all_hobbit_matrix/ticket_price_matrix);visitors
#b
(average_us_visitor<-round(all_hobbit_matrix[,1]/ticket_price_matrix[,1]))
#c
(average_non_us_visitors<-round(all_hobbit_matrix[,2]/ticket_price_matrix[,2]))
