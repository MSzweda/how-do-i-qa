# How do I QA?
Introduction to acceptance testing

FORK THE PROJECT!

# Dependencies
**Download and set these up first.**

Prerequisites:
- XCode (from Appstore)
- Homebrew
- Ruby version manager - RVM or asdf (asdf config is available in `.tool-versions` file) - it's not really required, but it will make your life easier

- Ruby 2.6.3
- Postgres (9.5.14 is safe - install via Homebrew or use Postgres app)

## Gem dependencies
- Capybara Webkit driver (you will need QT)
[Webkit as js driver for capybara](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)

# Database setup
We're using postgres. Make sure it's running (you can check with `brew services list`, if you use Homebrew) :)
Then log in to template with this command line:

Ubuntu: `sudo -u postgres psql template1`
OSX: `psql template1`

You will now be in psql command line.
After that in the console run the development setup script - this script is already filled in with passwords, etc.
If you want to change any of the information in there you will need to change it also in database.yml later!

In the pql console run: `\i <PATH_TO_PROJECT>/db/development_setup_script.sql`
Exit console by typing `\q`

**Copy database.yml.sample to database.yml**:
`cp config/database.yml.sample config/database.yml`

Run `bundle install`
Then `rake db:reseed` to populate development environment with example data.
Load test database with `rake db:test:load`.


# Credentials
**Seeds have a user already created for you.**

`admin@example.com` with password `12345678`

# Run
`bundle exec rails s`

(`bundle exec` uses gems from your project, not global for your machine)

# Run specs (if any)
`bundle exec rspec spec`
