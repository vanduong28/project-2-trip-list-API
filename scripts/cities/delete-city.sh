# curl --include --request DELETE http://localhost:4741/cities/4

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cities/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json"
echo
