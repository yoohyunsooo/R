#데이터 구조와 함수의 이해
#스칼라, 리스트, 벡터, 행렬, 배열
list1 <- list(1,2,3)
list2 <- list(1.6,2.3,3.5)
list3 <- list(1.6,2,3,"gg", TRUE)
typeof(list1)
typeof(list2)
typeof(list3)

list3

a <- list(1,2,3,4)
b <- list(4,5,6,7)
a+b #오류 list는 연산이 불가능 다양한 자료형태가 들어갈 수 있기 때문

#벡터는 하나의 자료형만 입력가능, 따라서 연산 가능
Vector <- c(1,2,3)
Vector <- c(1,2,3,2.5) #실수에 맞게 나머지 벡터가 변경경
Vector

char_v <- c("배고프다","날씨가 짱 좋다","놀러가고 싶다")
logical_v <- c(TRUE,FALSE,TRUE)

#벡터 연산
A <- c(1.6,2.3,3.5)
B <- c("aa",5.3,7.5) #전부 문자열로 변경
mode(B)
A+B

#list안에 벡터가 들어갈 수도 있음
#list는 데이터를 담는 주머니다!! 라고 이해하자
wow <- list(c(1,2,3),c(4,5.6,45),"강아지",3.14)
wow

matrix(data = c(1,2,3,4,5,6), nrow=3,ncol=2)
matrix(data = c(1,2,3,4,5,6), nrow=2,ncol=8) #데이터 부족으로 앞부분 입력

m = matrix(c(1,2,3,4), nrow = 2)
m
rownames(m) = c("삼척","동해")
colnames(m) = c("일시","강수량")
m

#배열 array
array(c(1,2,3,4,5,6), dim = c(2,3)) #2*3인 2차원 
array(c(1,2,3,4,5,6), dim = c(2,2,2))#2*2*2인 3차원


a = array(c(1,2,3,4,5,6), dim = c(2,2))
b = array(c(6,5,4,3,2,1), dim = c(2,2))

rbind(a,b) #col이 같을때 데이터의 특징이 같은 상태에서 데이터를 추가
cbind(a,b) #주체는 같은데 특징이 다들때, col 추가

myarray = array(1:12,dim = c(2,3,2,2))
myarray
x <- c("row1","row2")
y <- c("col1","col2","col3")
z <- c("slice1","slice2")
dimnames(myarray) <- list(x,y,z,NULL) #이름을 넣고 싶지 않을 때는 NULL
myarray

#중요!
#인덱싱 //위치정보에서 값을 뽑아내거나 지정하는 거
#R은 1부터 시작한다 //파이썬이나 C와는 다르다는걸 기억하자!

#문자열 인덱싱
install.packages("stringr")
library(stringr)

a <- "a bcdefg" #띄어쓰기도 하나의 인덱스 값을 가지고 있다
substr(a,1,5)

ex <- "저는 강원대학교 학생"
substr(ex,4,8)

#리스트 인덱싱
b <- list(7,8,0,1,1,2,3)
b[2]+b[4] #리스트에서 2번째 값 b[2] == list(2) , list + list 는 연산 불가능
b[[2]]+b[[2]] #b[[2]] == c(2) 


#벡터 인덱싱
v <- c(1,2,3,4,5,6)
v[4] #벡터는 대괄호 하나만 써도 가능
v[-4]
v[1:5]


#다음주까지의 수업내용으로 중간고사!