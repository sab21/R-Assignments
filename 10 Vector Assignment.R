#Question 1 & 2
stock_hcl<-c(140,-50,20,-120,240)
names(stock_hcl)<-c('mon','tue','wed','thu','fri')
stock_hul<-c(-24,-50,100,-350,10)
names(stock_hul)<-c('mon','tue','wed','thu','fri')
stock_hcl;stock_hul


###Question 3
stock_combined<-stock_hcl+stock_hul
names(stock_combined)<-c('mon','tue','wed','thu','fri')
stock_combined


###Question 4
(total_hcl<-sum(stock_hcl))
(total_hul<-sum(stock_hul))
(total_profit<-total_hcl+total_hul)

#Question 5
total_hcl>total_hul


#Question 6
hcl_wednesday<- stock_hcl['wed']

#Question 7
(hcl_midweek<-stock_hcl[2:4])
(average_midweek_gain<-mean(hcl_midweek))

#Question 8
(earnhcl_vector<-stock_hcl>0)

#Question 9
(hcl_earning_days<- stock_hcl[stock_hcl>0])

#Question 10
(hul_earning_days<-stock_hul[stock_hul>0])
