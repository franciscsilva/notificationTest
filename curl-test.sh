#!/bin/bash
SERVER_KEY='BI2NKX_imT8DBibst-N3PPiGdE_YZHQvrerqhVfwQfTc6kv6j4Hf2JKS0OV6Oiihrco5HRMZNBlb0k8snDtOn7g'
DEVICE_REG_TOKEN='dVJib_9rSpE2U1xhhwQMBi:APA91bGJw0469ZEa7h4N6dPvShFEA8hgjgAWcPHFWNBqb0J4OeqPu7S3waJMBvAyLQ7p6OK_La2vM8AMVxACNpcGt8nXu6HENmplZZBY1QQmZH85sbiwsLr8gD58s5o4wyIJnn2sBNzq'

CMD=$(cat <<END
curl -X POST -H "Authorization: key=$SERVER_KEY" -H "Content-Type: application/json"
   -d '{
  "data": {
    "notification": {
        "title": "FCM Message",
        "body": "This is an FCM Message",
        "icon": "/itwonders-web-logo.png",
    }
  },
  "to": "$DEVICE_REG_TOKEN"
}' https://fcm.googleapis.com/fcm/send
END
)

echo $CMD && eval $CMD