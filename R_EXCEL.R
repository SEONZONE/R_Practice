library(readxl)
      
# ========================= EXCEL =========================

exdata <- read_excel("C:/Users/1/Documents/R_Practice/Sample1.xlsx")
        exdata
        
        View(exdata)
        
        str(exdata)
        
        dim(exdata)
        
        ls(exdata)

        
head(exdata,2)        


tail(exdata,n=4)
# ========================= 변수명 변경 =========================
install.packages("dplyr")
library(dplyr)

exdata <- rename(exdata, Y17_AMT = AMT17, Y16_AMT = AMT16)
View(exdata)


# ========================= 파생 변수  =========================

  exdata$AMT <- exdata$Y17_AMT + exdata$Y17_AMT

  
  exdata$CNT <- exdata$Y17_CNT + exdata$Y16_CNT
  
  exdata$AVG <- exdata$AMT / exdata$CNT
  
  exdata$AGE50_YN <- ifelse(exdata$AGE >= 50,"Y","N")
  
  exdata$AGE_GR10 <- ifelse(exdata$AGE >= 50,"A1.50++",
                            ifelse(exdata$AGE >=40,"A2.4049",
                                   ifelse(exdata$AGE >=30,"A3.3039",
                                          ifelse(exdata$AGE >= 20,"A4.2029","A5.0019"))))
  
  exdata
  # ID    SEX          AGE AREA  Y17_AMT   Y17_CNT Y16_AMT  Y16_CNT  AMT   CNT  AVG AGE50_YN    AGE_GR10
  # <dbl> <chr> <dbl> <chr>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl> <dbl>   <dbl> <chr>    <chr>   
  #   1     1 F         50 서울  1300000      50  100000      40 2600000    90  28889. Y        A1.50++ 
  #   2     2 M         40 경기   450000      25  700000      30  900000    55  16364. N        A2.4049 
  #   3     3 F         28 제주   275000      10   50000       5  550000    15  36667. N        A4.2029 
  #   4     4 M         50 서울   400000       8  125000       3  800000    11  72727. Y        A1.50++ 
  #   5     5 M         27 서울   845000      30  760000      28 1690000    58  29138. N        A4.2029 
  #   6     6 F         23 서울    42900       1  300000       6   85800     7  12257. N        A4.2029 
  #   7     7 F         56 경기   150000       2  130000       2  300000     4  75000  Y        A1.50++ 
  #   8     8 F         47 서울   570000      10  400000       7 1140000    17  67059. N        A2.4049 
  #   9     9 M         20 인천   930000       4  250000       2 1860000     6 310000  N        A4.2029 
  #   10    10 F        38 경기   520000      17  550000      16 1040000    33  31515. N        A3.3039 
  
  
  hakjum1 <- read_excel("C:/Users/1/Documents/R_Practice/Hakjum.xlsx") 
  hakjum
  hakjum$SUM <- hakjum$math + hakjum$english + hakjum$science
  hakjum$mean <- hakjum$SUM / 3
  hakjum$grade <- ifelse(hakjum$mean >=90,"A",
                         ifelse(hakjum$mean >= 80 , "B",
                                ifelse(hakjum$mean >= 70 , "C",
                                       ifelse(hakjum$mean >=60,"D","F"))))
  head(hakjum)
  
  exdata %>% select(-AREA)
  exdata %>% filter (AREA == '서울')  
  exdata %>% arrange(AGE,desc(AMT))
  
  exdata %>% group_by(AREA) %>% summarise(TOT_Y17_AMT = sum(Y17_AMT))
  
# =================== HOMEWORK  ===================
  hakjum1
  
  hakjum1 %>% filter (class != 2,4)
  
  hakjum1 %>% filter(class %in% c(1,3,5))  
  
  hakjum1 %>% select(english,science)

  hakjum1 %>% filter(class == 1) %>% select(english)
    