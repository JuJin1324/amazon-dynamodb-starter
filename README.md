# Dynamodb-Starter

## dynamodb-local
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
