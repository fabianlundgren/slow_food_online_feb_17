# SloFo

This is midcourse project for CraftAcademy Class Feb-april 2017.
It's a slow food internet order page.


**Pivotal Tracker**
[Pivotal Tracker for SloFo](https://www.pivotaltracker.com/n/projects/1996373).

**GitHub**
This site base reside on [GitHub Pages](https://github.com/CraftAcademy/slow_food_online_feb_17).

### Installing

Fork and clone repo, then run:

```
$ bundle install
```
Then:

```
$rake db:migrate
```

### Deployment

We are using [Semaphoreci CI](https://semaphoreci.com)  for continous integration and [Heroku](http://heroku.com/)
The site address [https://slowfood-online-feb-17.herokuapp.com](https://slowfood-online-feb-17.herokuapp.com)

## Information about project:

* Ruby version
  Ruby 2.3.3

* Configuration
  - Ruby on rails
  - Haml

* Database creation
  - rails db:create

* Database initialization
  - rails db:migrate

* How to run the test suite
* Tests:
  - **rake** to run all test
  - **rspec** to run spec test
  - **cucumber** to run feature test

* Dependencies:
  - acts as shoppingcart gem
  - devise gem
  ```
  $brew install phantomjs
  ```
