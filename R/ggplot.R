library(ggplot2)
library(readxl)
library(dplyr)
economics <- as.data.frame(ggplot2::economics)
str(economics)

ggplot(data=economics,aes(x=date, y=psavert)) + geom_line(color="red",size=7) + geom_point()
 
ggplot(mtcars,aes(x = cyl)) + geom_bar(width = 0.5)  

v_hakjum <- read.csv("excel/ggplot2_Hakjum1.csv")
str(v_hakjum)
v_hakjum


ggplot(data = v_hakjum,aes(x = reorder(name,score), y = score)) + geom_col(aes(fill = score),color ="black",alpha=0.8)

ggplot(mtcars,aes(x= factor(cyl))) +  geom_bar(aes(fill = factor(gear)))


v_hakjum2 <- read.csv("excel/ggplot2_Hakjum2.csv")
str(v_hakjum2)
v_hakjum2

ggplot(data = v_hakjum2,aes(x= name,y=score,fill=subject)) +  geom_col() +
  geom_text(aes(label = paste(score,"점")),
            check_overlap = TRUE,position = position_stack(vjust = 0.5))
  # +coord_flip() 가로로 표현
ggplot(data = v_hakjum2,aes(x = name, y= score)) + geom_boxplot()
ggplot(data = v_hakjum2,aes(score)) + geom_histogram()

metro <- read.csv("excel/수송인원.csv")
metro
View(metro)
as.data.frame(metro)

seoul <- medicine %>% select('과목','서울')  %>% arrange(desc(서울)) %>% head(6)
ggplot(seoul,aes(x=과목,y=서울)) + geom_col(aes(fill=과목))
topmetro <- metro %>% select('역......명','일평균') %>% arrange(desc(일평균)) %>% head(10)

ggplot(topmetro,aes(x=reorder(역......명,-일평균) ,y=일평균)) + geom_col(aes(fill=역......명)) + scale_y_continuous(labels = scales::comma)

