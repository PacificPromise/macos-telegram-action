send_telegram_group_topic() {
  curl --location "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    --header 'Content-Type: application/json' \
    --data '{
      "chat_id": "'"$TELEGRAM_GROUP_ID"'",
      "reply_to_message_id": "'"$TELEGRAM_TOPIC_ID"'",
      "text": "'"$1"'",
      "link_preview_options": { "is_disabled": true }
  }'
}

send_telegram_group() {
  curl --location "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    --header 'Content-Type: application/json' \
    --data '{
      "chat_id": "'"$TELEGRAM_GROUP_ID"'",
      "text": "'"$1"'",
      "link_preview_options": { "is_disabled": true }
  }'
}

send_telegram_channel() {
  curl --location "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    --header 'Content-Type: application/json' \
    --data '{
      "chat_id": "'"$TELEGRAM_CHANNEL_ID"'",
      "text": "'"$1"'",
      "link_preview_options": { "is_disabled": true }
  }'
}
