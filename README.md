#Dumb Waiter:

This is a sample Sinatra API application.  The purpose is to demonstrate returning data
 from Sinatra as an API, this will have a few JSON files to represent recipes that will be returned to
 a client app.

## Setup
Basically, pull the repo and run bundle.

	bundle install

Once that is complete, crack open your terminal and:

	thin -R config.ru -p 8080 start

That will startup the sinatra instance on port 8080


