install.packages("rJava")
install.packages("KoNLP")
install.packages("wordcloud2")
install.packages("reshape2")



library(rJava)
library(KoNLP)
library(wordcloud2)
#  ===================================== MELT() ===================================== 
names(airquality) <- tolower(names(airquality))
head(airquality)
melt_test <- melt(airquality)
head(melt_test)
tail(melt_test)
melt_test <-melt(airquality,id.vars = c("month","wind"),measure.vars = "ozone")
head(melt_test)

head(airquality)

# ===================================== CAST() ===================================== 

dcast_test <- dcast(melt_test,month + wind ~ variable)
head(dcast_test)
head(melt_test)

acast_test <- acast(melt_test, month ~ variable,mean)
head(acast_test)

# ===================================== WORDCLOUD ===================================== 

useSystemDic()
useSejongDic()
useNIADic()
words <- c("바나나","키위","사과","포도","배","자몽","망고","수박","두리안","체리","낑깡","복숭아","레몬","블루베리")
freqs <- c(20,19,18,17,16,15,14,13,12,11,10,9,8,7)
v_dataframe <- data.frame(words,freqs)
wordcloud2(v_dataframe,color="random-light",backgroundColor = "black",shape="cirlce")
word_data <- readLines("애국가(가사).txt")
iu <- readLines("IU_NightLetter.txt",encoding = "utf-8")
iu
word_data
word_data <- sapply(word_data,extractNoun,USE.NAMES = F)
undata <- unlist(word_data)
undata

word_table <- table(undata)
word_table

word_data <- Filter(function(x) { nchar(x) >= 2 } ,undata)
word_data <- table(word_data)
word_data
sort(word_data, descreasing = T)
library(wordcloud2)
wordcloud2(word_data,shape="diamond")

wordcloud2(mtcars,minRotation = -pi / 6,maxRotation = -pi /6 , rotateRatio = 1)

v_data <- sample(1:50,10)
v_data
sort(v_data,decreasing = F)
v_data[11] <- NA
order(v_data)

# ===================================== MTCARS ===================================== 
mtcars
v_mtcars <- mtcars[order(mtcars$hp),]
head(v_mtcars,10)

v_mtcars <- mtcars[rank(mtcars$hp),]
head(v_mtcars,10)

# ++++++++++++++++++++++++++++++++++++++++++++++ [ 함수 ] ++++++++++++++++++++++++++++++++++++++++++++++ 

#함수 선언
#함수명 <- function (입력) {
# 실행 문장
# }

#함수실행
#함수명(전달값)



fn <- function(x) {
  print(x)
}
fn("Hello")
fn(10)


fn_minus <- function(x,y) {
  result <- x-y
  paste0(x," - ", y , " = " , result)
}

fn_minus(3,1)
fn_minus(1,3)
fn_minus(y=100,x=123)


#RETURN()  : 괄호안에 리턴할 변수 혹은 표현식을 기술한다. 
fn_return <- function(x,y) {
  result <- x + y
  return(result)
}
fn_return(5,1)

v_data <- fn_return(5,7)
v_data

#IF
fn_if <- function(x) {
  if ( x > 0) {
    result <- "양수"
  }
  else if(x < 0) {
    result <- "음수"
  }
  else {
    result <- "0입니다."
  }
  return(result)
}

fn_if(0)  

fn <- function() {
  my_list <- list("color"= "red", "size" = 100, "shape" = "round")
  return(my_list)
}
data <-fn()
data

# 학점 
fn_hakjum <- function(x) {
  if ( x >= 90) {
    result <- "A"
  }
  else if(x >= 80 && x < 90) {
    result <- "B"
  }
  else if(x >= 70 && x <80) {
    result <- "C"
  }
  else if(x >= 60 && x <70) {
    result <- "D"
  }
  else {
    result <- "F"
  }
  
  return(result)
}
jumsu <- 76

fn_hakjum(jumsu)

# gsub(patter,replacement,x,ignore.case)
  # -patter : 변환 전 문자열 
  # -replacement : 변환 후 문자열 
  # -x :변환할 문자열 
  

  v_data <- "ABCabcdfe"
  gsub("ABC","***",v_data)  
  
  
  v_data <- "ABCabcABC"
  gsub("ABC","***",v_data,ignore.case = T)
  
  
  v_vec <- c("ABCabcABC","abcABCabc")  
  gsub("ABC","***",v_vec)  
  
  gsub("\\w","*","abc_1234_안녕하세요!!! ^^") # 소문자 w 는 특수기호 빼고 암호화
  
  gsub("\\W","*","abc_1234_안녕하세요!!! ^^")  # 대문자 W 는 특수기호 암호화 처리 
  
  gsub("\\d","*","abc_1234_안녕하세요!!! ^^") # d 는 숫자
  
  gsub("\\D","*","abc_1234_안녕하세요!!! ^^") # D 는 숫자를 제외한 문자 , 특수문자 
  