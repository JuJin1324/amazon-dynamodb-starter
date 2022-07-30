# Dynamodb-Starter

## dynamodb-local
## 주의사항
###
> Java 에서 dynamodb-local 을 DynamoDbClient 로 설정할 때 Region 은 넣지 않는다.
> Region 을 넣은 후에 클라이언트로 테이블을 생성하면 DynamoDB Local 조회 프로그램에서 해당 테이블을 조회할 수 없다.
> AWS NoSQL Workbench, dynamodb-admin 모두 DynamoDbClient 에서 region 을 ap-northeast-2 로 지정한 경우 테이블이 조회되지 않는 현상이 발생하였다.

### Docker 실행
> 터미널에서 프로젝트 디렉터리로 이동
> ```
> ## docker 디렉터리로 이동
> cd docker
> ## docker-compose 실행
> docker-compose up --build -d
> ``` 

### 테이블 생성
> 터미널에서 프로젝트 디렉터리로 이동
> ```
> cd bash
> ./dynamodb-create-table.sh
> ```

### 데이터 Insert
> 터미널에서 프로젝트 디렉터리로 이동
> ```
> cd bash
> ./dynamodb-insert.sh
> ```

### 데이터 쿼리
> 터미널에서 프로젝트 디렉터리로 이동
> ```
> cd bash
> ./dynamodb-music-query.sh
> ```

### GUI Tool
> dynamodb 의 endpoint 를 localhost 로 할 경우 사용 -> [NoSQL Workbench](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html)  
>
> dynamodb 의 endpoint 를 ip 주소로 할 경우 사용 -> [dynamodb-admin](https://www.npmjs.com/package/dynamodb-admin)
> 실행 예제: `DYNAMO_ENDPOINT=http://192.168.0.38:8000 dynamodb-admin`  
> 브라우저에서 접속: `http://localhost:8001`  
> 참조사이트: [DynamoDB + GUI 로컬 개발환경 세팅하기](https://aerocode.net/317)
