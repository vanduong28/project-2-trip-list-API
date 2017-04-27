# curl --include --request POST http://localhost:4741/cities \
#   --header "Content-Type: application/json" \
#   --data '{
#     "city": {
#       "name": "Seattle",
#       "state": "Washington",
#       "country": "United States of America"
#     }
#   }'

  #!/bin/bash

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/cities"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "city": {
        "name": "'"${NAME}"'",
        "state": "'"${STATE}"'",
        "country": "'"${COUNTRY}"'"
      }
    }'

  echo
