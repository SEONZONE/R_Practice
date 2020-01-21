# ====================================== 파일 읽어들이기 ====================================== 
  install.packages("readxl")
  library(readxl)
  excel_ex <- read_excel("C:/Users/1/Documents/R_Practice/R_FileRead/data_ex.xls")
  excel
  str(excel_ex)
  excel_ex
  
  excel_fruit <- read_excel("Fruits.xlsx")
  excel_fruit  
  str(excel_fruit)  
  
  exce_fruit_title <- read_excel("Fruits_title.xlsx")  #첫번째 라인은 무조건 타이틀로 읽는다.
  exce_fruit_title  
  
  exce_fruit_title <- read_excel("Fruits_title.xlsx",col_names = F)  #col_names =F 로 설정하면 됨
  exce_fruit_title
  str(exce_fruit_title)    
  
  
  #txt 파일 읽는 법 , header = T 는 첫번째 라인을 타이틀로 읽고 nrows = 3 은 3번째 까지의 줄을 읽는 속성이다. 
  excel_ex <- read.table("C:/Users/1/Documents/R_Practice/R_FileRead/data_ex.txt",header = T,nrows =3)
  excel_ex
  
  
  
  # ==================================== , 를 구분자로 파일 읽는 법  ====================================
  excel_ex <- read.table("C:/Users/1/Documents/R_Practice/R_FileRead/data_ex1.txt",header = T,sep = ",")
  excel_ex
  
  
  #============ col.names 를 사용하여 타이틀 설정하여 데이터 읽어 들여오기 ============
  varname <- c("ID","SEX","AGE","AREA")
  excel_ex <- read.table("C:/Users/1/Documents/R_Practice/R_FileRead/data_ex2.txt",sep =",",col.names = varname)
  excel_ex
  
  
  #==================================== CSV 파일 읽기 ====================================
  excel_ex <- read.csv("C:/Users/1/Documents/R_Practice/R_FileRead/data_ex.csv")
  excel_ex
  str(excel_ex)
  
  
  #==================================== Wirte 하여 CSV,TXT 파일로 저장하기 ====================================
  data_ex <- data.frame(
    ID = c(1,2,3,4,5),
    SEX = c("F","M","F","F","M")
  )
  write.csv(data_ex, file = "C:/Users/1/Documents/R_Practice/R_FileRead/data1_ex.csv",row.names = F,quote =F) #row.names  : 번호 제거  
                                                                                                              #quote : " 제거 
  data_ex <- data.frame(
    ID = c(1,2,3,4,5),
    SEX = c("F","M","F","F","M")
  )
  write.table(data_ex, file = "C:/Users/1/Documents/R_Practice/R_FileRead/data1_ex.txt",row.names = F)
  
  
  #==================================== RDA 파일 저장  ====================================
  
  rda_ex <- data.frame(
    ID = c(1,2,3,4,5),
    SEX = c("F","M","F","F","M")
  )
  save(rda_ex,file = "C:/Users/1/Documents/R_Practice/R_FileRead/rda_ex.rda")
  
  View(rda_ex)    
  