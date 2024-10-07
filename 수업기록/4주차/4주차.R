#배열 인덱싱
a = array(data=c(1,2,3,4,5,6),dim=c(2,3))
a

a[2]
a[1,2]
a[1:2]
a[1:3]
a[1:2,2]
a[6] #공간이 할당되어있지 않아도 벡터의 순서대로 값이 전달된다.

a[c(3,6)]
a[1:2,1]
a[2,2:3]

a[c(1,6)]


#데이터 프레임 >> 표형식
#이름 나이 시험점수
#유현수 17    30
# 5    십     40.5
# 엑셀상에서 자동으로 문자로 바뀜, 문자가 들어가 있는 열이 전부 문자로 바뀜
# 연속적인 numeric 
# 리스트의 형식에 가장 가까움, 다양한 자료형 저장

my_list <- list("apple", 3.14, c(1,2,3), TRUE)
#리스트에서 벡터 가져오기
my_list[3] #계산 불가능
my_list[[3]] #계산 가능
my_list[[3]][2] #계산 가능하도록 벡터값을 가져오고 그중 2 가져오기

my_list[3][2] 
my_list[3][2] + my_list[3][3] #리스트 값을 가져왔기 때문에 
my_list[3] #>>> lisr(C(1,2,3)) 과 동일, 
#[3],[2]는 list(c(1,2,3), ㅁ) ㅁ의 자리값 가져오란 소리라 null

b <- array(1:24,dim = c(3,4,2))
b
b[2,3,1]
b[3,,2]
b[,2:3,]
b[2,3,1]
b[,,2]
b[22]
b[1,4,2]

#아래와 같은 배열을 만들고 5와 16을 각각 인덱싱해 값을 추출하시오.
c <- array(1:20, dim = c(2,5,2))
c
c[1,3,1]
c[2,3,2]
c[c(5,16)]

#데이터 프레임 ? -> 벡터들을 담는 주머니다.
#벡터들에는 다양한 자료형태들이 존재한다.(칼럼)
#벡터의 요소 개수가 같아야 합니다. (행이 일치해야 하니까)
#규격화된 프레임안데 벡터 데이터를 넣는게 데이터 프레임

city <- c("seoul","busan","daegu","seoul","busan","daegu","ulsan")
pm25 <- c(15,21,21,17,8,11,25)
df <- data.frame( a = city, b = pm25) #a,b는 변수명
df

id <- c(1:5)
gender <- c("m","f","f","m","m")
major <- c("eng","math","com","eng","busi")
salary <- c(2500,2800,2500,3000,2600)
survey <- data.frame( ID = id, Gender = gender, Major = major, Salary = salary,
                      stringsAsFactors = FALSE)#각 요소마다 숫자로 바꿀껀지
survey

#id값 추출
survey[1]
survey["ID"] #변수명으로 가져오기 >> 리스트 정보를 가져오고 싶을 때
survey[["ID"]][2] #연산을 위해서 >>  벡터 정보를 가져오고 싶을 때
survey$ID #위에 방식 귀찮으니까 $ 사용, ****TAP키***** 누르면 변수명이 뜸(몰랐네)
survey$ID[2]
survey$ID[3:4]
survey$ID[c(3,5)]

#데이터 프레임에 새로운 값 추가
survey$score = c(200,300,400,500,600)
survey

survey$ss = survey$Salary + survey$score
survey
