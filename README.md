# Animal Shelter API

##### By: Aaron Boyd

## Description

_This project is a created API that allows users to return instances of specific animals stored in an Animal Shelter database. This API demonstrates the use of custom search scopes to find animals by name and breed. It also uses Versioning as a means to potentially scale the API devopment. And it uses pagination to give the user the option to limit results to 10 at a time._

## Technologies Used

* _Ruby_
* _Rails_
* _Gems_
* _API_
* _RSpec_
* _Postgres_
* _SQL_
* _Versioning_
* _Pagination_


## Setup/Installation Requirements

* To run this program, you must have Ruby 2.6.5 and Rails 5.2.0 installed on your machine. If you do not, you can follow these instructions: [Mac](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-mac) or [PC](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-windows).

* Clone this file to your local machine using this projects' [github](https://github.com/AaronDBoyd/Rails_Animal_Shelter_API)
* Once you have the project downloaded, navigate to the root of the project in your terminal and type "bundle install".
* You will also need Postgres installed on your machine. If you do not, you can follow these [instructions.](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-postgres).
* In the terminal at the root of the project, type "postgres" to make sure Postgres is running.
* NOTE: if you are running this application on a Windows machine you will have to adjust the database access settings. To do so, go to the file located at `config/database.yml` and add you username and password specifications to sections `development:`, `test:`, and `production:` like so:
```
development:
  <<: *default
database: rails_animal_shelter_api_development
username: <%= ENV['POSTGRES_USERNAME'] %> 
password: <%= ENV['POSTGRES_PASSWORD'] %> 
```

* Then, in a separate terminal type:
* `rake db:create` - this will create a new database.
* `rake db:migrate` - this will upload the schema design to the database.
* `rake db:test:prepare` - this will design the test database to mirror the development database.
* `rake db:seed` - this with auto-populate the database.
* `rails s` - this will run the rails server so the project can be viewed in the browser.(keep this terminal separate from your working terminal.)
* To test the API endpoints you will need to download an API platform like (Postman.)[https://www.postman.com/downloads/] Then, visit `localhost:3000/api/v1/animals` to view all animals.

## Endpoints
| Usage | Method | URL | Parameters |
| :---: | :---: | :---: | :---: |
| See All Animals | GET | `localhost:3000/api/v1/animals` |  |
| See Pages of Animals listed(10 at a time) | GET | `localhost:3000/api/v1/animals?page=(integer here)` | :page |
| Find a specific animal by ID | GET | `localhost:3000/api/v1/animals/:id` | |
| Find a specific animal by name(case-insensitive) | GET | `localhost:3000/api/v1/animals?name=(insert full or partial name)` | :name |
| Find a specific animal by breed(case-insensitive) | GET | `localhost:3000/api/v1/animals?breed=(insert full or partial breed)` | :breed |
| Find a random animal | GET | `localhost:3000/api/v1/animals?random=true` | :random |
| Create an animal entry | POST | `localhost:3000/api/v1/animals` | :name, :age & :breed |
| Update an animal entry | PUT | `localhost:3000/api/v1/animals/:id` | :name, :age & :breed |
| Delete an animal entry | DELETE | `localhost:3000/api/v1/animals/:id` |  |

## Known Bugs

_There are no known bugs_

## License

[MIT](https://opensource.org/licenses/MIT)


Copyright (c) 2022 Aaron Boyd
