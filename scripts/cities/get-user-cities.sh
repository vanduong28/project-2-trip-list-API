API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cities/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
