
library(rJava)
library(KoNLP)
library(wordcloud2)

useSystemDic()
useSejongDic()
useNIADic()

word_data <- readLines("제주도여행지추천.txt",encoding="UTF-8")
word_data <- gsub("\\d","",word_data) # D 는 숫자를 제외한 문자 , 특수문자
#word_data <- gsub("\\W","",word_data)  # 대문자 W 는 특수기호 암호화 처리 
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
wordcloud2(word_data,minRotation = -pi / 6,maxRotation = -pi /6 , rotateRatio = 1)


