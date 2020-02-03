# ================== ORACLE DB 연동  ==================
  install.packages("rJava")
  library(rJava)
  
  install.packages("RJDBC")
  library(RJDBC)  

  jdbcDriver <- JDBC(driverClass = "oracle.jdbc.OracleDriver"
                     ,classPath = "C:/Users/1/Documents/R_Practice/ojdbc6.jar") 
  conn <- dbConnect(jdbcDriver,"jdbc:oracle:thin:@localhost:1521:xe","hr","hr")     #thin 타입 드라이버   
  
  query <- "select * from employees";  # EMPLOYEES 출력문
  data <- dbGetQuery(conn,query)  
  View(data)  
  str(data)  
  
  
# ================== HOMEWORK ==================
  salary <- "select * from employees where salary >= 10000"; # 연봉이 10000이상인 직원들 출력  
  data <- dbGetQuery(conn,salary)
  View(data)
  
  
  
  