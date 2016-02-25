# weeklywear: An App for the Indecisive
weeklywear allows users to upload photos of their t-shirts for other users to vote on. Users can vote once per day (Feature Coming Soon!) for each user who has uploaded tees. Every Sunday, weeklywear sends out an email [Feature Coming Soon!] to each user who uploaded shirts which received votes, of which tee had the most vosts for that week. That tshirt is removed from circulation (Feature Coming Soon!) for the following week and the user is then required (honesty-pending) to wear the winning design the following day.

## Contents
* **[Getting Started](#getting-started):** How to work with the code?
* **[Wireframes](#wireframes):** Original design specifications & interfacery
* **[User Stories](#user-stories):** How did we plan our features and organize 
* **[Heroku Link](#heroku-hosted-project)**
* **[Technologies](#technologies):** What languages, gems, libraries, and frameworks are being used?
* **[Future Development](#future-development):** What are we hoping to add?
* **[Contributors](#contributors):** Who made all of this happen?

# Getting Started
* Fork this repo and clone it onto your local machine.
* Change directory into our `fleeking-beauty` directory.
* Run `bundle install` to install gems.
* ImageMagick must be installed on your machine (Mac OS X - `brew install imagemagick`, Ubuntu - `sudo apt-get install imagemagick -y`).
* Run `rake db:setup` to create and migrate the database (PostgreSQL must be installed on your machine).
* Run `rails s` to start the server locally.


# Entity Relationship Diagram

![ERD](http://i.imgur.com/064EXj6.png)

# [Wireframes](https://weeklywear.mybalsamiq.com/projects/weeklywear/grid)

## User Profile Page
![User Profile Page](http://i.imgur.com/p3y69Xv.png)

## Tshirt Management
![Tshirt Management](http://i.imgur.com/eXySKjD.png)

## Edit Tshirt Page
![Edit Tshirt Page](http://i.imgur.com/kZX6bf2.png)

# [User Stories](https://trello.com/b/pC2YeTav/weeklywear)

---

# Heroku hosted project
[weeklywear](http://weeklywear.herokuapp.com/ "weeklywear")

# Technologies
* Languages
	* Ruby on Rails
	* HTML5
	* CSS3
	* Javascript
* Gems/External Libraries
	* jQuery
	* Paperclip
	* bcrypt
	* RSpec
	* Bootstrap
	* HTTP
* Database
	*  PostgreSQL

# Future Development
* User can add a place to vote on.

# Contributors
* <a href="https://github.com/isangieri" target="_blank">Is Angieri</a>
* <a href="https://github.com/breonknight" target="_blank">Breon Knight</a>
* <a href="https://github.com/bw-giraffe" target="_blank">Rich Rizzo</a>
* <a href="https://github.com/anonym0us3" target="_blank">Nathan</a>