 # ====================== dply ======================
  library(dplyr)
  install.packages("scatterD3")    
   library(scatterD3)
  distinct(mtcars,cyl,gear)
  summarise(mtcars,mean(cyl),min(cyl),max(cyl)) 
  gr_cyl <- group_by(mtcars,cyl)   
  summarise(gr_cyl,n_distinct(gear))  
  sample_n(mtcars,10)
  
  mutate(mtcars,mpg_rank = rank(mpg)) %>% arrange(mpg_rank)
  
#====================== ggplot ======================
  install.packages("readxl")
  install.packages("ggplot2")
  library(ggplot2)
  library(readxl)
  
  ggplot2::mpg  
  as.data.frame(v_mpg)  
  v_mpg <- ggplot2::mpg
  v_excel <- read_excel("excel/시도별표시과목별의원.xlsx")
  as.data.frame(v_excel)    
  View(v_excel)
  
  summary(v_excel)
  summary(v_excel$서울)
  
  Hakjum <- read_excel("excel/Hakjum.xlsx")
  View(Hakjum)
  as.data.frame(Hakjum)
  str(Hakjum)  
  hakjum <-Hakjum %>% mutate(total=math + english + science, 
                    mean = total / 3,
                    mena_round = round(mean)) %>% 
                    arrange(class,desc(total)) %>% 
                    head(5)
  
  install.packages("descr")
  library(descr)  
  
  v_mpg <- ggplot2::mpg                    
  v_mpg  
  
  v_mpg <- v_mpg %>% mutate(total_fe = cty + hwy,
                   avg_fe = total_fe /2,
                   avg_fe_passyn = ifelse (avg_fe>= 20,"pass","fail"),
                   avg_fe_grade = ifelse(avg_fe>=30,"A",
                                         ifelse(avg_fe>=20,"B","C")))
  
  v_mpg %>% filter(manufacturer == 'chevrolet') %>% arrange(cty) %>% head(5)
  
  
  hist(v_mpg$avg_fe)
  summary(v_mpg$avg_fe)
  
  barplot(bp)
  
  bp <- table(v_mpg$avg_fe_grade)  
  
  ggplot(hakjum,aes(id,math)) + geom_point()
  
  hakjum %>% filter(class == 1 ) %>% filter(math>=60 | science >= 60)
  hakjum %>% filter(class %in% c(1,3,5))
  
  hakjum %>% filter(class == 1) %>% select(english)
  
  
  hw_mpg <- v_mpg %>% group_by(manufacturer,model) %>%
                      summarise(mean_cty = mean(cty)) %>%
                      arrange(desc(mean_cty)) %>%
                      head(10)
  hw_mpg    

  hw_mpg <- v_mpg %>% filter(class == 'compact') %>%
                      group_by(manufacturer) %>%
                      summarise(count = n()) %>%
                      arrange(desc(count))
  
  