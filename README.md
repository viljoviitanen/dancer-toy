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

    heroku create -s cedar-14 --buildpack http://github.com/viljoviitanen/perloku.git
    git push heroku master

The magic happens with the [custom buildpack](https://github.com/viljoviitanen/perloku). It uses the [cpanfile](cpanfile) to install dependencies first, with cpanminus, then runs the [Perloku](Perloku) file to start the server.

> Note, using the deploy button you get the old heroku cedar stack based on Ubuntu 10.04, which has a fairly ancient perl 5.10.1. This simple app works with it, but for any serious use, use the cedar-14 stack which is based on Ubuntu 14.04 and has perl 5.18.2.

The author has a running instance of this app in heroku at http://obscure-headland-5322.herokuapp.com/ .

**License**

[Unlicensed](UNLICENSE) / Public Domain
