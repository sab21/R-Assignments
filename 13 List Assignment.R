# List Assignment: 
# 1. Give 2 differences between List and Vector. 
# 2. Give 2 differences between List and Matrix. 
# 3. Construct a list named Employee with 5 elements in it. First element 
# named "Id" has value A101 to A105. Second element named "Ename" as value 
# as "Alice", "Ron", "Peter", "Sheryl", "Marissa". Third element named "Dept" 
# has value as "Finance", "Marketing", "Operations". Fourth element named as 
# "City" has value as "Bangalore", "New York". Fifth element named as "Salary"
# has values ranging from 70000 to 75000. 
# 4. Create the variable Three_idiots_list. 
# The list contains the following components: 
# a. moviename: "3 idiots" b. actors: a vector with the main actors
# ' names as follows: "Aamir Khan", "R Madhavan", "Sharman Joshi", "Boman Irani",
# "Kareena Kapoor", "Omi Vaidya" c. ratings: a matrix that contains reviews as 
# follows: STARS IMDB 4.25 TOI 4.50 HT 3.50 NDTV 4.50 REDIFF 2.00
# 5. Use the above created Three_idiots_list and do the following: 
# a. Select last actor and assign the result to last_actor. 
# b. Select all information regarding the second ratings.Store the result in second_ratings 
# c. Add the year as 2009.Use c(). Store the result to Three_idiots_list_full


#1
# Vectors are one dimensional array. It can store one type of datatypes (like numeric, character, logical, complex, etc) hence called atomic.
# List are multi dimensonal and recusrsive as it can store other vectors matrix and even another list.

#2
# Matrix are 2 D array containing values of same datatypes hence they are atomic.
# While List are multi dimensional and can store objects of all sort of datatypes hence recursive
#3
employee<-list(Id=c("A101","A102","A103","A104","A105"),
                Ename=c("Alice","Ron","Peter","Sheryl","Marissa"),
                Dept=c("Finance","Marketing","Operation"),
                city=c("Bangalore","New York"),
                Salary=c(70000,71000,72000,74000,75000))
employee
#4
Three_Idiot_lIst<-list(movie_name="3 Idiots",
                       actors=c("Aamir Khan","R Madhavan","Sharman Joshi",
                                "Boman Irani","Kareena Kapoor","Omi Vaidya"),
                       ratings=matrix(c(4.25,4.5,3.5,4.5,2),5,1,
                                      dimnames =list(c("IMDB","TOI","HT","NDTV",
                                                       "REDIFF"),"STAR")))
Three_Idiot_lIst

#5.a
(last_actor<-Three_Idiot_lIst$actors[6])
#5.b
(second_ratings<-Three_Idiot_lIst$ratings)
#5.c
yr=2009
Three_Idiot_lIst<-c(Three_Idiot_lIst,year=yr)
Three_Idiot_lIst
