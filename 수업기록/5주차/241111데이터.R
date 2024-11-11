#복습
#데이터 프레임은 ,"f리스트에 해당
#데이터 프레임은 변수의 집합
#데이터 프레임은 문자, 숫자, 숫자, 문자 이런식으로 섞여서 들어올수 있어서
#리스트의 형태라고 했다

#DF$A == DF[[A]]
#값을 뽑아서 계산하려면 [[]] 리스트 안의 벡터값을 가져와야 함

#오늘의 수업
#데이터 형태 변환
id <- c(1:5)
gender <- c("m","f","f","m","m")
major <- c("eng","math","com","eng","busi")
salary <- c(2500,2800,2500,3000,2600)
survey <- data.frame(ID=id,Gender=gender,Major=major,Salary=salary,stringsAsFactors = FALSE)
#스트링애즈팩터: 문자 형태를 요소로 취급할까요? 트루로 하면 하나의 요소로 됩니다.
#데이터 프레임 형태를 알 수 있게해줌
#모든 스트링 변수들이 요소로 바뀌니까 우선은 폴스
#as.factor로 변환

#데이터를 불러오고 제일 먼저 해줘야하는 작업!
summary(survey)

survey$ID = as.integer(survey$ID)
survey$ID = as.numeric(survey$ID)                     
survey$ID = as.factor(survey$ID)
survey$ID = as.logical(survey$ID)
survey$ID = as.character(survey$ID)

survey$Major = as.numeric(survey$Major) #결측치 생성

survey$Major = as.factor(survey$Major)#summary 시 가지고 있는 개수 보여줌

survey

#데이터프레임 변수의 이름 변경
names(survey)
names(survey)[names(survey) == "Salary"] = 'SALARY'

#필요한 변수만 가져오기
survey[c(1,2)]
survey[c(-1,-2)] #열 삭제
survey[survey$Gender == "f",] #앞부분이 행, 뒷부분이 열 젠더라는 변수에서 조건을 만족하는 행만 가져올거야
survey[survey$Major == "eng" & survey$SALARY > 2600,] #& == and 이고, 그리고
survey[survey$Major == "eng" | survey$SALARY > 2600,] #| == or 이거나, 또는

survey1 <- survey[survey$Major == "eng" | survey$SALARY > 2600,] #따로 값 저장

#조금더 다양한 조건을 간단하게 가져오기
subset(survey,select = c(1,2))
subset(survey,survey$SALARY > 2600)
subset(survey,survey$SALARY > 2600, select = c("Gender","SALARY")) 

#열을 삭제
survey$Gender <- NULL

#데이터 나누기
name_age_df <- data.frame(
  Name = c("Kim Cheol-soo","Lee Cheol-soo","Kim Young-hee","Lee Young-hee",
           "Kim Min-jun","Park Min-jun","Kim Jo-young","Park Ji-young"),
  Age = c(20,24,21,24,35,40,34,35),
  stringsAsFactors = FALSE
)

name_age_df

#필요한 패키지
install.packages("tidyr")
library(tidyr)

name_age_df <- separate(name_age_df, col = "Name", into = c("LastName", "FirstName"), sep = "-")
print(name_age_df)


#데이터 불러오기 
#엑셀 활용해서 TXT -> CSV 
data <- read.csv("C:/Users/yoohyunsoo/Desktop/A.csv",header = TRUE ,stringsAsFactors = FALSE)
#header 변수명 행이 존재하느냐
data
#데이터 프레임에 F 변수 추가
data$F <- c(5,9)

#데이터 저장하기
write.csv(data,"C:/Users/yoohyunsoo/Desktop/At.csv",row.names = TRUE) #인덱스 열 저장
write.csv(data,"C:/Users/yoohyunsoo/Desktop/Af.csv",row.names = FALSE) #인덱스 열 없이 저장
#따라서 보통은 FALSE로 많이 저장함



#문제
vec <- c(0:10)
vec2 <- c(10:20)
matr <- cbind(vec,vec2)
matr[4,2]





