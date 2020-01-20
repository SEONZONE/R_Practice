x <- 10
x


x<-c(10,20,30)
x


x<-c(10:15)
x


x<-seq(10,15)
x  


x<-seq(1,10,by=4)
x

x<-"HI"
x


x<-c("HEllo","Hi","Hello~!!!!")
x

ex_vector1 <- c(-1,0,1)
ex_vector1


str(ex_vector1) # 변수의 데이터 구조를 알려준다. 
length(ex_vector1) # 벡터의 개수 즉, 길이를 말한다. 

ex_vector2 <- c("1","2","3")
ex_vector2

str(ex_vector2)

ex_vector3 <- c(TRUE,FALSE,TRUE,FALSE)
ex_vector3

str(ex_vector3)

# ======백터를 행/열 로 구성한 행렬, 행렬의 확장인 배열 ======
x <- c(1,2,3,4,5,6)
matrix(x, nrow = 2, ncol = 3)

matrix(x,nrow = 2,ncol = 3, byrow = T) # 행 우선으로 정렬되고 T 아니면 TRUE 로 써도 된다.

matrix(c(1,2,3,4,5,6,7,8),nrow =2, ncol = 4) # 바로 넣을 수 있음.

v_matrix <- matrix(c(1,2,3,4,5,6),nrow = 2)
v_matrix

b_matrix <- matrix(c(1:6) , ncol =2)
b_matrix

c_matrix <- matrix(c(1:6),nrow=2, ncol=1)
c_matrix
# # ==============데이터(요소) 개수 ================
# dim() : 행과 열의 개수
# length() : 전체 데이터 개수. 행  * 열 개수
# --------------------행렬 1 ------------------------
  v_matrix <- matrix(c(1:6))
  v_matrix
  
  dim(v_matrix)
  
  length(v_matrix)
  
  nrow(v_matrix)
  
  ncol(v_matrix)
  
# --------------------행렬 2 ------------------------
  
  matrix2 <- matrix(c(1:6), nrow =2)
  matrix2  

  dim(matrix2)  

  length(matrix2)
  
# -------------------- 인덱스 ------------------------
  
  index1 <- matrix(c(1:12),nrow =3, byrow=T)
  index1  
  
  index1[1,]   #[1] 1 2 3 4
  
  index1[,1] #[1] 1 5 9
  
  index1[1:2,]
  
  index1[-3,c(1,2)]

# -------------------- 행 추가  ------------------------
  
  add_row <-matrix(c(1:12), nrow = 3 , byrow = T )
  add_row  
  
  add_row <- rbind(add_row,c(15:16))  
  add_row  
# -------------------- 열 추가  ------------------------
  
  add_col <-matrix(c(1:12), nrow = 3 , byrow = T )
  add_col  
  
  
  add_col <- cbind(add_col,c(13:16))  
  
  add_col  

# ---- 수정 ----
  modfiy <- matrix(c(1:12) , nrow = 3 , byrow = T )
  
  modfiy  

  modfiy[1,4] <- 56  
  modfiy
  
  modfiy[2,] <- c(100,200,300,400)
  modfiy
  
  modfiy <- modfiy[,-3]
  modfiy
  
  modfiy <- modfiy[-1,]
# ========== HOMEWORK =========  
  v_matrix <- matrix(c(1:20) , nrow=4)
  v_matrix# 결과 확인용
  
  v_matrix2 <- v_matrix[,2]
  v_matrix2# 결과 확인용
  
  v_matrix3 <- v_matrix[1,]
  v_matrix3 # 결과 확인용

  
  

# ++++++++++++ ARRAY +++++++++++++
  y <- c (1,2,3,4,5,6)
  array(y,dim = c(2,2,3))
  
  
  
# ++++++++++++ LIST +++++++++++++ 
  
  list1 <- list(c(1,2,3) , "Hello" , c(3,5,6))
  list1
  str(list1)
  
  list2 <- list("seonzone" , 25 , "BigData Class" , c(1,2,3,4,5,6))
  list2  
  str(list2)
  
  v_char <- c("HELLO WORLD!!")
  v_num <- c(1,2,3,4,5,6)
  v_bool <- c(TRUE,FALSE,TRUE)
  
  list3 <- list(content=v_char,number=v_num,boolean=v_bool)
  list3
  str(list3)
  
  length(list3)
  length(list3$boolean)
  
  list3[3]
  list3[[3]]
  list3$boolean
  
  list3 <- list(name="seonzone" , age = 25) # 추가 
  list3  
  
  list3$name
  
  list3$age <-c(24) # 변경
  list3$age  

  list3$age <- NULL  #삭제
  list3
  # ========== HOMEWORK =========  
  
  homework <- list(name = "다이아" , address="제주" , mobile = "010-1234-5678" , married = FALSE)
  homework
  
  homework$job <-("학생")
  homework
  
  homework$address <-("성남")
  homework  
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
  

  