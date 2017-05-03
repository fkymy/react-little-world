gem used:
https://github.com/stevenosloan/slack-notifier
alternative to:
https://github.com/MrPowers/slack_notifier_wrapper
slack api:
https://api.slack.com/docs/message-attachments
https://api.slack.com/docs/messages/builder

e.g.
```example.rb
Slack::ExampleNotifier.notify(
  Slack::Template::ExampleMessage.format(issue, administrators)
)
```
