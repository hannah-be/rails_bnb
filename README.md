# Rails BnB

## Messaging System

### Conversation
Has_many messages

- host (sender/recipient)
- user (sender/recipient)
- messages


### Messages
belongs_to conversation
- conversation
- content
- sender
- recipient


