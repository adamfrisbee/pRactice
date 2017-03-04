#Import given data set
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Calculate profit
profit <- revenue- expenses

#Calculate profit after tax; round to 2 decimal places
profitaftertax <- round(profit * (1 - .3), 2)

#Calculate margin and display as a percentage
margin <- paste(round((profitaftertax / revenue)* 100), "%", sep="")

#Calculate good, bad, best, worse
good <- profitaftertax > mean(profitaftertax)
bad <- profitaftertax < mean(profitaftertax)
best <- profitaftertax == max(profitaftertax)
worst <- profitaftertax == min(profitaftertax)


