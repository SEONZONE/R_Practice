install.packages("NRAIA", repos="http://R-Forge.R-project.org")
library(NRAIA)
detach(package:NRAIA)
library(NRAIA)
trees
qqnorm(trees$Volume)

fivenum(trees$Volume)[2] -
  1.5*IQR(trees$Volume)

boxplot(trees$Volume, col="green")

set.seed(1234)
height =rnorm(n = 100000,mean=175,sd=5)
mean(height)

fivenum(Volume)
fivenum(trees$Volume)



#표본추출 sample 함수는 임의로 요소를 추출하는 것 
          sample(height,size = 10)
          M=NULL
          P=NULL
          for(i in 1:100000) {
            x=sample(height,size=10)
            M[i] = mean(x)
            P[i]=var(x)
          }
          
          mean(M) # 표본평균의 평균과 모평균과 비교
          sd(M) # 표본평균의 표준편차인 표준오차
          mean(P) # 표본분산의 평균은 모분산에 근접
          mean(P*9/10) # 표본분산을통해 모분산을 추정해도 모분산에 차이가 있음



#귀무가설 , 대립가설
# 귀무가설 : 모집단의 특성에 대해 옳다고 제안하는 잠정적인 주장 
# 대립가설 : 귀무가설이 거짓이라면 대안적으로 참이 되는 가설 . 
# 틀렸다고 판단했을 떄(기각 되었을 떄),대안적으로 선택하는 (채택되는)가설

#가설 검정
#1.귀무가설, 대립가설 설정
#2. 실험이나 관찰을 계획, 수행
#3. 실험이나 관찰을 효과적으로 요약
#4. 요약된 값이 귀무가설 하에서 쉽게 발생할 수 있는 값인지 조사
#5. 귀무가설하에서 발생하기 힘든 값이라면 귀무가설을 기각, 충분히 발생할 수 있는
# 값이라면 귀무가설을 기각하지 못한다.

#예 1
# 2000년 조사, 중학생 평균키 170cm, 2010년 식생활 변화로 키 변화 조사
# H0: 2010년 중학생들 평균키는 170cm이다. 
# Ha: 2010년 중학생들 평균키는 170cm보다 크다.

# 예 2 
# 기본A 고혈압 약이 가장 효과적이었다. 최근 유전공학으로 개발된 B약이 고혈압에 효과가 더 있
# 는지 조사
# H0: A약과 B약은 고혈압 치료에 차이가 없다.
# H0: A
# Ha:H0: A약과 B약은 고혈압 치료에 차이가 있다. 

# 단측검정 : 1에서 평균키가 작다,같다,크다중 작을 확률은 없다면,한 쪽(큰 쪽)만 고려하여 검정, 귀묵가설 기각 가능성 높아짐, 검정력 높아짐
# 2에서 Ha 차이가 있다. Ua 는 Ub와 같지 않다. Ua > Ub, Ua < Ub를 모두 고려

      x = c(15.50, 11.21, 12.67, 8.87, 12.15, 9.88, 2.06, 14.50, 0, 4.97)
      mean(x) 
      sd(x)
      mean(x) -8.1
      shapiro.test(x)

# Shaprio test P-value가 정규분포를 확인하는 테스트 
      t.test(x,mu=8.1)
      
      rnorm(n=length(x),mean=mean(x),sd=sd(x))
      
      P=NULL
      for(i in 1:10000)
         P[i] = shapiro.test(rnorm(n=length(x),mean=mean(x),sd=sd(x)))$p.value
                             P<0.05
                              mean(P<0.05)
                              
                        
#One Sample T-Test(Paired T - Test)
        FT = read.csv("FT.csv")
        with(FT,shapiro.test(Postwt-Prewt))
        with(FT,t.test(Postwt-Prewt))       
        
        anorexia = read.csv("anorexia.csv")
        anorexia
        
        anorexia[c(1,3), ] # 행추출
        anorexia[, c(1,2)] # 열추출
        anorexia[c(1,3), c(1,2)] # 영역추출
        anorexia$Treat =="FT" # FT인지 검토True, False
        anorexia$Treat =="FT" # FT인지 검토True, False
        anorexia[anorexia$Treat =="FT"] # FT 데이터 선택
        anorexia$Treat %in% c("Cont", "FT") # Cont, FT 선택
        anorexia$Treat != "CBT" # Cont, FT외 제외
        
        with(FT, t.test (Postwt-Prewt)) # FT 추출후 분석
        with(anorexia[anorexia$Treat=="FT",], t.test (Postwt-Prewt)) # 같은 결과

library(MASS)
matrix(c(10,6,6,10),ncol=2)        
x = mvrnorm(n=10, mu=c(94, 93), Sigma= matrix(c(10, 6, 6, 10), ncol=2))
x
t.test(x[,2] - x[,1])
x[,1]
x[,2]

install.packages("psych")
library(psych)
library(MASS)
matrix(c(10,7,7,10),ncol = 2)
x = mvrnorm(n=33,mu=c(75,81),Sigma = matrix(c(10,8,8,10),ncol=2))
x
cor(x)

# 용도
#  실험군과 대조군에 서로 다른 개입을 적용, 두 집단(독립적)의 평균이 같은지 비교
# One sample t-test : 쌍을 이룬 두 변수간에 평균 차이가 0인지 검정
# Two sample t-test : 독립적인 두 집단의 변수간에 평균 차이가 0인지 검정
#  순서
#  두 집단의 분산이 같은지 검정(var.test())
#  분산이 다르면Welch의 t-test 적용 (t.test())
# 
#  분산이 다르면Welch의 t-test 적용 (t.test())
#  분산이 같으면 pooled variance를 이용한 t-test 적용 (var.equal=TRUE)
dental = read.csv("dental.csv")
dental
boxplot(resp ~ treatment,data=dental,col='red')
boxplot(log(resp) ~ treatment,data = dental,col='red')
