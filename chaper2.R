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
