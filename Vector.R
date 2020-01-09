      v_num <- c(1,2,3,4,5)
      v_num
      
      v_num <- c(10:13)
      v_num

# sequence  :     seq()
# 시작 숫자와 마지막 숫자 사이의 연속된 값으로 생성
# by : 연속된 수의 간격

      v_seq <- seq(1,5) # 1~5 까지 연속된 값으로 변수 생성 
      v_seq
      
      
      v_seq <- seq(1,10, by=2) # 2간격으로 1~10까지 나열  
      v_seq
      
      v_seq <- seq(1,11, by=10) # 10간격으로 나열
      v_seq


#repeat :     rep()
# 반복적인 벡터 생성
# times : 전체 요소의 반복 횟수
# each : 개별 요소의 반복 횟수

      v_rep <- rep(1:3, times=2)
      v_rep
      
      v_rep <- rep(1:3, each=2)
      v_rep

#문자형 벡터      
      v_char <- c("A","B","C")
      v_char
      
      
      v_char <- c("1","2","3")
      v_char
      
#논리형 벡터
      v_log <- c(TRUE,FALSE,TRUE,FALSE)
      v_log

#lenght() : 벡터 내 요소(데이터) 개수
      var1 <- c(10,20,30,40,50)
      var1
      length(var1)
      
      var2 <- c("Hello World!!!")
      var2
      length(var2) #  요소(데이터) 개수
      nchar(var2) #문자 개수
      
# ========= 인덱스 =========
# 배열과 비슷한 개념 
# 자바와는 다르게 0부터 시작하지 않고 1부터 시작한다.
      var1 <- c(10,20,30,40,50)
      var1
      
      # 1번째 요소 조회
      var1[1]
      
      # 2번째 요소 조회 
      var1[2]
      
      #1번째 , 3번째 요소 조회
      var1[c(1,3)]
      
      
      #음수는 "제외" 의 의미
      #-2 일경우 2번째 요소 제외하고 조회
      var1[-2]
      var1[-c(1,3)]
      var1[1:5]
      
# =========== 조건 ===========
      
      #30보다 큰 값만 조회
      var1 <- c(10,20,30,40,50,60)
      var1[var1 > 30]
      
      # %in% : 특정값 포함 여부 확인
      30 %in% var1 #var1 에 30이 있으면 TRUE
      100 %in% var1 # var1에 100이 없어서 FALSE
      
      var2 <- readLines("readLines_IU_NightLetter.txt", encoding="UTF-8")
      var2
      '당신의' %in% var2
      
#======== 추가 ========
      
      var1 <- c(var1, 70) #var1에 70요소 추가 
      var1
      
   
      

      
      