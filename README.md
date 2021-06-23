# GraphQL_API

GraphQL Api is created through which a user can :

- Fetch the list of all audios
- Fetch the individual audio using its title 
- Create a new audio
- Update a particular audio using its title
- Delete a particular audio using its title


Tech Stack and Tools:
   - Golang
   - GraphQL
   - PostgresQL
   - pgAdmin
   - Postman


Packages and Libraries :
   - go get github.com/graphql-go/graphql
   - go get github.com/graphql-go/handler
   - go get github.com/lib/pq


Database  :
   - User should have postgresql installed
   - User Should import the attached "audio.sql" file before making requests
                              

Postman Collection Link :
   - https://www.getpostman.com/collections/76ba6e40ddb3bc582375


How to run the Server :
   - go run GraphQL_API.go
