Portfolio in Rails
==================

For Epicodus Code Review: Thursday, 2 July, 2015
-----------------------------------------------

Description:
------------
Allows portfolios to be added for multiple users with skills and projects added.

By:
---
Andrew David Burt (andrew@ampletorque.com)

Setup:
------
Runs under rails. To clone this project, first run:

    $ git clone https://github.com/ampletorque/epicodus-rails-intro-code-review.git
    $ cd epicodus-rails-intro-code-review
    $ postgres&
    $ bundle
    $ rake db:create
    $ rake db:migrate
    $ rake db:test:prepare
    $ rails server

, and open this address:

    http://localhost:3000

in your web browser.

License:
--------
MIT License. Copyright 2015 Andrew David Burt.

Bugs:
-----
None so far.

Notes:
------
I decided to make an intentionally more complex database schema, with a many-to-many relationship betweeen skills and projects. Though I have this working on the model, I was not able to get the automatically-populated-by-model select-boxes to work I tried for awhile to link the one to the other. This means it isn't working completely.
Also, I haven't finished writing complete integration spec coverage.
