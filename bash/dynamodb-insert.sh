# trip_record table 데이터 추가
aws dynamodb batch-write-item \
--request-items file://song-list-1.json \
--endpoint-url http://localhost:8000

aws dynamodb batch-write-item \
--request-items file://song-list-2.json \
--endpoint-url http://localhost:8000
