# amazon-dynamodb-starter

## 쿼리
### 쿼리 제한 사항
> DynamoDB에서 한 번의 쿼리 또는 스캔 작업으로 가져올 수 있는 데이터의 양은 최대 1MB 입니다. 
> 이 말은 쿼리나 스캔의 결과가 1MB를 초과하는 경우, DynamoDB는 해당 작업의 일부 결과만 반환하고 LastEvaluatedKey 를 
> 포함하여 추가 결과를 가져오기 위한 후속 쿼리 또는 스캔을 수행해야 함을 알려주는 토큰을 제공합니다.
> 
> 만약 더 많은 데이터를 가져와야 한다면, LastEvaluatedKey 를 사용하여 추가 쿼리나 스캔을 반복적으로 수행해야 합니다. 
> 이 방식을 통해 필요한 모든 데이터를 순차적으로 가져올 수 있습니다. 
> DynamoDB는 이러한 반복 쿼리 또는 스캔 작업을 통해 큰 데이터 세트를 효율적으로 처리할 수 있도록 설계되었습니다.

---

## 데이터 관리
### 아이템 벌크 삭제
> 2024-02-28 기준 DynamoDB 테이블의 아이템 삭제는 파티션 키와 정렬 키 모두 이퀄 연산만 지원한다. 즉, 한번 요청에 한 개의 아이템만 삭제할 수 있다.
> 파티션 키만 혹은 파티션 키 + 정렬 키 범위 설정을 통한 삭제가 불가능하다.  
> 
> 아이템을 벌크로 삭제하는 방법은 읽기 쿼리를 통해서 아이템 목록을 읽어온 다음 읽어온 아이템의 파티션 키 + 정렬 키로 하나하나 아이템 삭제 요청을 하는 방법 뿐이다.
> 그래서 이는 사람이 수작업으로 할 수 있는 작업이 아니며 프로그램을 작성하여 프로그램을 돌려야한다.
> 
> 다만 여기서도 주의해야할 점은 아이템 목록 쿼리를 요청하는 경우 한 번의 쿼리 또는 스캔 작업으로 가져올 수 있는 데이터의 양은 최대 1MB 이다.
> 그래서 삭제하려는 데이터 량이 1MB 를 넘어가는 경우 LastEvaluatedKey 혹은 while 문을 통해서 삭제 처리를 해야한다.

---

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
