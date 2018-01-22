FEEDBACK
=========

## Quick Project Setup
From the command line run the following steps in order:

1. copy the project url from your github account and clone the repository: `git clone projecturl.com`
2. make sure all the project dependancies are installed
3. install project gems: `bundle install`
4. build the database
    - `rake db:create`
    - `rake db:migrate`
    - `rake db:seed`
5. Run the project `rails server`
