# README

## Running the app locally

`rails db:migrate && rails s`

## Endpoints

_note that all responses are decorated in the following format:_
```
{
	data: ...,
	errors: ...
}
```

### Create a message

POST `/api/create_message`
- accepted parameters: `name`, `message`
- returns all existing messages and any errors that occured

### Get Messages
GET `/api/get_messages`
- accepted paremeters: none
- returns all existing messages