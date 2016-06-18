# Coffee Roulette

## About

The intent of this project is to build and app that will automatically pair and email people once a month. This is being set up so that people in the company will be able to set aside some block of time to meet some one new.

The MVP of the project doesn't need any views, just the ability to take in employees (API or manually via command line) and send out emails to them once a month about who they are paired with. 

## Getting the app started

 - Fork this repo, and clone it down to your local machine
 - `bundle install` - to get all the necessary gems
 - `rake db:migrate` - to run all of the migrations
 - Optional: `rake db:seed` - uses Faker load up 5 random departments and 70 random employees. Create 12 coffee dates for each employee for the past 12 months. Note: seeding 12 months of coffee dates may take 10 - 20 seconds.

## To do:

### Modify Employee table and Pairing service to deal with people leaving

Employee's should have a data field as to whether they are currently employed or have left the company. We do not want to pair people with employees that have already left, but we do want to remember their coffee dates. Pairing service should only be pulling from active employees.

### Figure out how to import actual employee data

Justworks API?

### Set up mailer

Once employees are all paired up for the month, need to send out an email to everyone stating who their coffee date that month is. Use action mailer perhaps?

### Get site hosted on a server

Digital Ocean? Do we have an existing partnership?

Heroku? Free, but will it activate once a month to run the tasks?

### Set up task to run once a month

Use clockwork gem?
