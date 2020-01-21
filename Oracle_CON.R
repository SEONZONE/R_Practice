# ================== ORACLE DB 연동  ==================
  install.packages("rJava")
  library(rJava)
  
  install.packages("RJDBC")
  library(RJDBC)  

  jdbcDriver <- JDBC(driverClass = "oracle.jdbc.OracleDriver"
                     ,classPath = "C:/Users/1/Documents/R_Practice/ojdbc6.jar") 
  jdbcDriver  
  