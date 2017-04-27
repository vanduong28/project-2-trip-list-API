curl --include --request PATCH http://localhost:4741/cities/3 \
  --header "Content-Type: application/json" \
  --data '{
    "city": {
      "name": "",
      "state": "",
      "country": ""
    }
  }'
