dancer-toy
==========

Minimal perl dancer+jquery app with Heroku support

Demonstrates throwing some ajax calls around and doing something with them in both server and client side. On start, get some random numbers from server and display them as buttons. Pressing each button sends the button value to the server and displays the result with a popup.

**Instructions on how to run locally:**

Install perl [Dancer](http://www.perldancer.org/) module and dependencies with whatever means you prefer. Then just run

    perl bin/app.pl

**Instructions on how to run on Heroku**

Just click the button:

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Or if you prefer to do it manually,
you need a heroku account, the toolbelt installed, and logged in (https://devcenter.heroku.com/articles/quickstart). Clone this repo and cd in it. Then:

    heroku create -s cedar --buildpack http://github.com/judofyr/perloku.git
    git push heroku master

The magic happens with the [custom buildpack](https://github.com/judofyr/perloku). It uses the [cpanfile](cpanfile) to install dependencies first, then runs the [Perloku](Perloku) file to start the server.

The author has a running instance of this app in heroku at http://obscure-headland-5322.herokuapp.com/ .

**License**

[Unlicensed](UNLICENSE) / Public Domain
