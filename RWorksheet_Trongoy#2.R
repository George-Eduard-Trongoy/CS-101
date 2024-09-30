---
title: "RWorksheet_Trongoy#2"
author: "George Eduard Trongou"
date: "2024-09-26"
output: html_document
---

1. 
a.
```{r}
x  <- -5:5
x
```
b.
```{r}
x <- 1:7
x
```
2.

```{r}
x <- seq(1,3, by=0.2)
x
```
3.
a.
```{r}
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)


ages[3]


```
b.
```{r}
ages[-c(4, 12)]
```
4. 
a.
```{r}
x <- c("first" = 3, "second" = 0, "third" = 9)
x[c("first", "third")]
```
5. 
```{r}
x <- -3:2
x[2] <- 0
x
```
6.
a.
```{r}
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)
fuel_data <- data.frame(month, price_per_liter, purchase_quantity)
fuel_data
```
b.
```{r}
weighted.mean(price_per_liter, purchase_quantity)
```
7. 
a.

b.
> rivers
  [1]  735  320  325  392  524  450 1459  135  465  600  330  336
 [13]  280  315  870  906  202  329  290 1000  600  505 1450  840
 [25] 1243  890  350  407  286  280  525  720  390  250  327  230
 [37]  265  850  210  630  260  230  360  730  600  306  390  420
 [49]  291  710  340  217  281  352  259  250  470  680  570  350
 [61]  300  560  900  625  332 2348 1171 3710 2315 2533  780  280
 [73]  410  460  260  255  431  350  760  618  338  981 1306  500
 [85]  696  605  250  411 1054  735  233  435  490  310  460  383
 [97]  375 1270  545  445 1885  380  300  380  377  425  276  210
[109]  800  420  350  360  538 1100 1205  314  237  610  360  540
[121] 1038  424  310  300  444  301  268  620  215  652  900  525
[133]  246  360  529  500  720  270  430  671 1770

c.
```{r}
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
```
8. 
a.
```{r}
celebrity_names <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen",  "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John","David Letterman", "Phil Mickelson", "J.K Rowling","Brad Pitt","Peter Jackson","Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
power_ranking <- 1:25
celebrity_data <- data.frame(Power_Ranking = power_ranking, Celebrity_Name = celebrity_names, Pay = pay)
celebrity_data


```
b.
```{r}
power_rank[4] <- 15
pay[4] <- 90
print(power_rank)
print(pay)
```
c. 

```{r}
write.csv(data.frame(names, power_rank, pay), "Power-Ranking.csv")
rank_data <- read.csv("Power-Ranking.csv")
rank_data
```

d. 
```{r}
ranks_subset <-rank_data[10:20, ]
save(ranks_subset, file = "Ranks.RData")
```

9. 
a.
```{r}
library(openxlsx)
hotels_data <- read.xlsx("hotels-Vienna.xlsx")
hotels_data
```
b.
```{r}
dim(hotels_data)
```
c. 
```{r}
selected_data <- hotels_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
selected_data
```

d.
```{r}
save(selected_data, file = "new.RData")
load("new.RData")
head(selected_data)  
tail(selected_data)  

```


10.
a.
```{r}
vegetables <- c("Tomato", "Cucumber", "Carrot", "Potato", "Spinach", "Broccoli", "Pepper", "Lettuce", "Cabbage", "Onion")
vegetables

```

b.
```{r}
vegetables <- c(vegetables, "Zucchini", "Eggplant")
vegetables

```
c.
```{r}
vegetables <- append(vegetables, c("Beetroot", "Garlic", "Peas", "Pumpkin"), after=5)
vegetables

```

d.
```{r}
vegetables <- vegetables[-c(5, 10, 15)]
vegetables
```

