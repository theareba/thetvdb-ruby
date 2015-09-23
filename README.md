# Thetvdb

A Ruby Wrapper for [TVDB API](http://thetvdb.com/wiki/index.php?title=Programmers_API)

While there are other existing TVDB gems, none of them offers the following:
* Retrieving series episodes without having to query for series id first
* Not having to enter TVDB API key each time a call is made.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'thetvdb-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thetvdb-ruby

## Usage

Create TheTvDB initializer thetvdb.rb

    $ rails g thetvdb

Edit the initializer file and place your TVDB API key

require 'thetvdb'
API_KEY = "Your API Key"

#### Getting shows
To query for shows, use the command

    $ show = Thetvdb::Client.new("name of show").get_show

Note to replace "name of show" with the show you want to query

##How I developed it
Read on how I developed the gem [here](www.victorareba.com/tutorials/create-ruby-gem-by-example)
