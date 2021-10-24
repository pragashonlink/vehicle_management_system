# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# How to run the application?
* rails db:migrate
* rails s
* open browser and go to http://localhost:3000

# Implementation

* Implemented the upload/import feature
* Implemented the search search feature
* Implemented methods to get the number of customers by nationality
* Implemented methods to get average odometer by nationality
* Written unit test for models, controllers
* Didn't pay much attention towards UI so, it will be very basic

# Improvements/Enhancements

* I have not paid any attention towards performance or scalability. Would ideally move the importing of vehicles as an Async process. Ideally using something like sidekiq
* Validation also, not done, we would need to validate the email, name, model, etc... for presence and format
* Need to improve user interfaces and experience

# Tests

* Wrote 14 test cases and all of them passing
