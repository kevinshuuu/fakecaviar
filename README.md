# Caviar Clone
![Caviar clone screenshot](https://puu.sh/sNZ7Q/0d5fa6d66d.png)

## Description
This project is a clone of the food delivery site [Caviar](www.trycaviar.com). As the MVP, this clone
supports basic user authentication, basic order creation and editing, and basic order completion. Most
of the core user experience that you would expect from using the real Caviar is present in the clone, but
nuances like customizing the item you ordered or having multiple addresses are not implemented.

## Installation
As a typical Rails project, the installation of the application should be fairly straightforward. After
cloning the project, running `bundle install` should install all the dependencies needed. Then, setting
up the database can be done via `rake db:create`, `rake db:migrate`, `rake db:seed`. Alternatively,
`rake db:setup` should handle database setup as well. If you are running into any issues with `postgres`,
it may be a system-specific issue.

After the basic setup is complete, run the server using `rails s` and you should be able to start using
the application at `localhost:3000`.

## Other Comments
Since this project was mostly constrained to a 4-hour window, a lot of omissions were made for the sake of time.
One key omission was testing. As part of a 4-hour exercise in creating a web application from the ground up,
models and controllers were intentionally left to be very rudimentary and there is no JavaScript used by the front-end
either. The key functionality of the application was primarily kept to simple built-in Rails/CRUD functions in an effort to
avoid writing code that was too complex and generally should be tested. A good portion of time was spent on
mimicking the UI of the original Caviar application and creating a suitable data model to support the
basic functionality of the application.
