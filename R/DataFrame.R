# ========================================= DATA FRAME =========================================
ID <- c(1,2,3,4,5,6,7,8,9,10)
SEX <- c("F","M","F","M","F","M","F","M","F","M")  
AGE <- c(25,25,26,27,50,64,34,52,45,12)  
AREA <- c("성남","성남","성남","성남","성남","성남","성남","성남","성남","성남")

dataframe_ex <- data.frame(ID,SEX,AGE,AREA)
dataframe_ex

v_1 <- c("a","b","c")
v_11 <- data.frame(v_1)
v_2 <- c(10,20,30)
v_22 <- data.frame(v_2)
v_c <-data.frame(v_1,v_2)
v_c
str(v_c)

student <- c("Kim","Park","Ho","Gwan")
st <- data.frame(student)  

eng <- c(70,75,70,60)
kor <- c(80,85,80,90)  

result <- data.frame(st,eng,kor)  
result  
str(result)  

result <- data.frame (
  student = c("Kim","Park","Ho","Gwan"),
  eng = c(70,75,70,60),
  kor = c(80,85,80,90),
  stringsAsFactors = F  # Factor 를 문자열로 처리한다 .
)  
result  
str(result)


# ===================== 행 추출 =====================

student <- c("Kim","Park","Ho","Gwan","SEONG","JONG")
eng <- c(70,75,70,62,100,80)
kor <- c(80,85,56,90,100,83)
result <- data.frame(student,eng,kor,stringsAsFactors = F)
result
str(result)

result1 <- subset(result,eng == 70)
result1
str(result1)

rt1 <- subset(result, kor >= 70)
rt1   

rt2 <- subset(result, student == "SEONG")
rt2

rt3 <- subset(result, eng != 70 & kor >= 90)
rt3  

rt4 <- subset(result,eng != 70 & kor >= 90, select = student)
rt4

rt5 <- subset(result, select = c (-student,-eng))
rt5  
# ========== HOMEWORK =========

student <- factor(c("Kim","Park","Ho","Gwan","SEONG","JONG"),levels = c("Park","Kim","Ho","Gwan","SEONG","JONG"))
eng <- c(70,75,70,62,100,80)
kor <- c(80,50,56,50,100,83)
class <- factor(c(1,2,1,2,1,1),levels = c(1,2))
result <- data.frame(student,eng,kor,class,stringsAsFactors = F)
result
str(result)

mud <-data.frame(  student = factor(c("Kim","Park","Ho","Gwan","SEONG","JONG"),levels = c("Park","Kim","Ho","Gwan","SEONG","JONG"))
                   ,eng = c(70,75,70,62,100,80)
                   ,kor = c(80,50,56,50,100,83)
                   ,class = factor(c(1,2,1,2,1,1),levels = c(1,2))
)
mud
str(mud)



ban <- subset(result,class == 1 & eng <= 70 & kor <=80)
ban
str(ban)

# ===================== 변수명 변경 방법  =====================

student <- c("Kim","Park","Ho","Gwan","SEONG","JONG")
eng <- c(70,75,70,62,100,80)
kor <- c(80,85,56,90,100,83)
class <- factor(c(1,2,1,2,1,1),levels = c(1,2))
rt <- data.frame(STU = student,ENG = eng,KOR = kor,class) # 데이터 생성시 변수 변경 방법
rt

names(rt)[1:3] <- c("STUDENT","ENGLISH","KOREAN")
rt

colnames(rt) <- c("학생이름" , "영어성적 " , "국어성적" , "반")
rt
hw_fruitSales  <- data.frame(fruit = c("사과","바나나","포도"),
                             price = c(1500,500,2000),
                             qty = c(10,20,5),
                             no = c(1,2,3),
                             stringsAsFactors = F)
names(hw_fruitSales) <- c("번호","과일명","가격","개수")
str(hw_fruitSales)
hw_fruitSales
# ======================== [목록 조회]   ========================
length(hw_fruitSales)  #변수 개수
nrow(hw_fruitSales)  #행개수
str(hw_fruitSales)


rt <- data.frame( student = c("Kim","Park","Ho","Gwan","SEONG","JONG"),
                  eng = c(70,75,70,62,100,80),
                  kor = c(80,85,56,90,100,83),
                  class = factor(c(1,2,1,2,1,1),levels = c(1,2))
) 

rt[c(1:4)]
rt[1,3]
rt[rt$eng == 100,]
rt[rt$eng ==70 & rt$kor == 80,]
# ========== HOMEWORK =========
hw_coffeeSales  <- data.frame( 
  no = c(1,2,3,4),
  coffee = c("아메리카노","라떼","모카","콜드브루"),
  price = c(2500,3000,3000,3500),
  qty = c(3,2,1,0),
  stringsAsFactors = F
)
hw_coffeeSales  
str(hw_coffeeSales)

hw_coffeeSales[4,]
hw_coffeeSales[hw_coffeeSales$price <3500,]  

# ========== 합치기  =========
# rbind()
# row bind
rt <- data.frame( student = c("Gwan","SEONG","JONG"),
                  eng = c(70,75,70),
                  kor = c(90,100,83)
                  
) 
at <- data.frame( student = c("Kim","Park","Ho"),
                  eng = c(62,100,80),
                  kor = c(80,85,56)
                  
) 
bindt <- rbind(rt,at)
bindt

#cbind() 열합치기
mt <- data.frame( 
  music = c(70,75,70,23,45,56),
  art = c(90,100,83,48,90,56)
  
) 

ct <- cbind(bindt,mt)    
ct  
#추가 하기 
add <- rbind(ct,data.frame(student ="SEONZONE", eng =100,kor=100,music=100,art=100))
add  

class <- cbind(add,data.frame(class=c(1,1,1,2,2,1,2)))  
class  
# ========== HOMEWORK =========
fruitSales <- data.frame( 
  no = c(1,2,3),
  fruit = c("사과","바나나","포도"),
  price = c(2500,3000,3000),
  qty = c(3,2,1),
  stringsAsFactors = F
)
fruitSales
addfruit <- rbind(fruitSales,data.frame(no=4,fruit="딸기",price=2500,qty=30))
addfruit

fruitSales <- cbind(addfruit,data.frame(grade=c("A","A","A","A+")))
fruitSales

# ======================= 데이터 =======================
sungjuk <- data.frame( student = c("Kim","Park","Ho","Gwan","SEONG","JONG"),
                  eng = c(70,75,70,62,100,80),
                  kor = c(80,85,56,90,100,83),
                  stringsAsFactors = F
) 

sum(sungjuk$eng)  # 합계
mean(sungjuk$eng) # 평균
min(sungjuk$eng)  # 최소
max(sungjuk$eng)  # 최대 


sum(sungjuk$kor)  # 합계
mean(sungjuk$kor) # 평균
min(sungjuk$kor)  # 최소
max(sungjuk$kor)  # 최대 

