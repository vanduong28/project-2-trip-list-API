# curl --include --request PATCH http://localhost:4741/cities/2 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "city": {
#       "state": "Oregon"
#     }
#   }'

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/cities/$ID"
  curl "${API}${URL_PATH}" \
    --include \
    --request PATCH \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "city": {
        "name": "'"${NAME}"'",
        "state": "'"${STATE}"'",
        "country": "'"${COUNTRY}"'"
      }
    }'
  echo
