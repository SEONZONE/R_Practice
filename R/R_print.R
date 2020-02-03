# +++++++++++++++ PRINT 함수 +++++++++++++++
  

  #상수 

  print(month.name) #월 이름

  print(LETTERS) # 알파벳

  print(pi) #원주율
  
  
  #print() 문제점 
  
  print(3,4) #한개만 출력됨
  
  cat(3,4) #cat() 이용하면 된다. 
  
  cat(3,4,"\n",6,"\n",7,"\t",8)  
  
  
  # =================== PASTE ===================
  
  paste(1)
  
  paste("Hello")  
  
  paste("Hello","World")
  
  paste("Hello","World",sep=",")
  
  # =================== PASTE0 ===================
  x <- 10
  y <- 20
  hap <- x+ y
  paste0(x," + ",y," = ",hap)
    
  20 %% 7
  21%/%7
  
  # =================== 조건문 ===================
  data <- 5
  if ((data %% 2) == 0) {
      print("짝수")
  
    } else {
    print("홀수")
    }
  
  
    data <- 4
    ifelse((data %% 3) == 0,"짝수", "홀수 ")
    
    coffee <- "tea"
    ifelse(coffee == "latte","라떼",
           ifelse(coffee == "mocha","모카",
                  ifelse (coffee == "tea","홍차","없음")))
    
    data <-c(2,3,4,5)
    ifelse(data %% 2 ==0,"짝수","홀수")
    
    switch(1,"red","green","blue")
    switch(2,"red","green","blue")
    switch(3,"red","green","blue")
    
    ch <- 3
    rt <- switch(ch,"red","green","blue")    
    rt
    
    switch("color","color"="red","shape"="square","length"="5")
    switch("shape","color"="red","shape"="square","length"="5")
    
    choice <- "NETWORK"
    switch(choice,"R"="알입니다","JAVA"="자바","WEB"="웹","MOBILE"="모바일","디폴트 입니다")
    
    
    data <- c(10,11,12)
    for(i in data) { 
      print(i)
    }
    
    sum1 <- 0
    for (i in data){
    
      sum1 <- sum1 + i
    }
    print(sum1)

    
    i <- 1
    while(i<6){
      print(i)
      i = i + 1
    }
      
    

    
        