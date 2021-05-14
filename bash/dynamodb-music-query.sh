aws dynamodb query --table-name Music \
--key-condition-expression 'SongTitle = :title' \
--expression-attribute-values '{":title": {"S": "분홍신"}}' \
--endpoint-url http://localhost:8000
