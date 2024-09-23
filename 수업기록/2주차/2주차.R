integer_var <- 5
numeric_var <- 3.14
complex_var <- 2 + 3i
character_var <- "Hello, world!"
logical_var <- TRUE
another_logical_var <- FALSE
NULL_var <- NULL
NA_var <- NA
negative_inf <- -Inf
positive_inf <- Inf
nan <- 0/0

typeof(integer_var) 
typeof(numeric_var)
typeof(complex_var)
typeof(character_var)
typeof(logical_var)
typeof(another_logical_var)
typeof(NULL_var)
typeof(NA_var)
typeof(negative_inf) 
typeof(positive_inf)
typeof(nan)

mode(integer_var)
mode(numeric_var)
mode(complex_var)
mode(character_var)
mode(logical_var)
mode(another_logical_var)
mode(NULL_var)
mode(NA_var)
mode(negative_inf) 
mode(positive_inf)
mode(nan)

a <- 4
b <- 3

paste(3,4,5,6,7) #공백
print(paste(3,4,5,6,7))

paste0(3,4,5,6,7) #공백 없음
print(3,4,5,6,7) #에러
print(paste0(3,4,5,6,7))

paste(3,4,5,6,7, sep="-")
paste0(3,4,5,6,7, sep="-")

#함수를 사용하여 연산
#소문자 c(combine)를 이용하여 같은 특징을 가진 값을 하나의 변수에 저장
gc()

a = c(1,2,3,4,5,6,7,8,9,10)
sum(c(1,2,3,4,5,6,7,8,9,10))
sum(a)

seq(from = 1 , to = 5, by = 2)
seq(1,5,2)

seq(0,1,length.out = 1000) #0부터 1까지 1000개가 되는 자료 생성

rep(c(1,2,3), times=2)
rep(c(1,2,3), each=2)



x <- 1:100
head(x) #상위 6개 값
head(x, n = 10) #상위 7개 값
tail(x) #하위 6개 값
tail(x, n = 12) #하위 7개 값

X <- 1:100
#sample(x, size, replace = FALSE, prob = NULL)
#모집단
#추출할 개수
#복원여부 (기본값 FALSE)
#X의 각 원소별 추출 확률 (기본값 NULL)
sample(10) #1부터 10까지 임의로 섞어 추출
sample(45,6) #1부터 45까지 임의로 6개 추출 #로또
sample(10, 3, replace = TRUE) #동일한 확률 (1/10)로 복원추출 #도박 같다
sample(10, 3, prob = (1:10)/55) #10나올 확률이 가장 큼
(1:10)/55
sample(10, 3, prob = c(0.1,0.2,0.3,0.05,0.05,0.05,0.05,0.05,0.05,0.05))

x <- c(2,4,-1,3)
which( x > 2 ) #x의 값들 중 2보다 큰 값들의 위치 출력

names(x) <- c("1번","2번","3번","4번") #이름 부여 
which( x > 2 )

#난수(랜덤한 수)생성

#runif(n, min, max) #최소와 최대 사이의 균일 분포에서 n개의 연속형 난수를 생성
runif(10, 1, 10)

#rnorm(n, 평균, sd) #주어진 평균과 표준편차를 갖는 정규분포에서 n개의 난수를 생성
rnorm(10, 60, 2)

#rbinom(n, size, prob) 이항분포 넘어감


#특정 변수 제거
a <- 10
b <- 20
c <- 30
rm(a)
rm(list = c("a","c"))
rm(list = ls()) # 모든 값 삭제

gc()

#작업 경로 확인 (*중요, 파이썬과 동일)
getwd()

#작업 경로 설정(*중요,파이썬과 동일)
setwd("C:\\Users\\yoohyunsoo\\Desktop\\2-2")
setwd("C:/Users/yoohyunsoo/Desktop/2-2/재난안전프로그래밍/Rproject")


#문제
seq(1,100,5)
rep(c(1,2,3,4,5),times = 100)
rep(c(1,2,3,4,5),each = 100)
sample(10,5)
sample(49,6)
sample(10,3,replace=TRUE)
sample(10,3,prob=(1:10)/55)
sample(10,3,prob=c(0.1,0.2,0.3,0.05,0.05,0.05,0.05,0.05,0.05,0.05))
runif(100,50,100)
rnorm(200,100,15)       
