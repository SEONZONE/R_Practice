v2 <- 20
v2
is.numeric(v2)
is.character(v2)
v2 <- as.character(v2)
is.numeric(v2)
is.character(v2)
# 연속변수(Continous variable)
  var1 <- c(1,2,3,1,2)
  var1

# 범주변수(Categorial variable) 
  # Data Type : factor
  var2 <- factor(c(1,2,3,1,2))
  var2

#numeric variable
  levels(var1)

# factor variable
  levels(var2)
  
# ===============================================================================
# ================================= Data Type ===================================
# ===============================================================================
  # 문자형 (character)
    # 문자형은 문자 및 문자열을 모두 포함한다.
     'A' 
     "A" 
  # 숫자형 (Numeric)
  var <- "10"  
  var
  var <- as.numeric(var)
    #정수와 실수
    1+2*3
    (1+2)*3
    
    Integer <- 10L 
    Integer
    
    AsInteger <- as.integer(10)
    AsInteger
    
    is.integer(Integer)
    is.numeric(Integer)
    
  #문자열
  var3 <- " '문자열입니당'"
  var3  
  
  var4 <- '"문자열입니당"'
  var4
  
  #논리형
  TRUE
  FALSE
  var <- 6
  var2 <-7
  var_true <- (var > var2)
  var_true
  
  #자료형 확인
  is.logical(var)
  is.numeric(var)
  
  #특수문자
    #NULL: 값이 없다
    #NA  : 결측치, 누락된 값
    #NAN : not a number 문자는 아님
    #INF : 무한대 값 
  
  #데이터
  data <- c(1,2,NULL,4,5)
  
  #길이
  length(data)
  
  #is.null(): 변수에 null 이 포함되어 있는지 여부 확인
  is.null(data)
  
  #연산
  sum(1,2,3)
  sum(1,2,3,NULL)
  
  data1 <- NA
  length(data1) # 길이가 1 
  
  #결측치 여부 확인
  #is.na() : NA 여부 확인
  is.na(data1)
  
  #결측치 개수
  #sum(is.na())
  sum(is.na(data1))
  
  data_multi <- c(1,2,3,4,5,6,NA,NA)
  length(data_multi)
  is.na(data_multi)
  sum(is.na(data_multi))
  
  
  
  
    
  
  
  
  