# Thetvdb

A Ruby Wrapper for [TVDB API](http://thetvdb.com/wiki/index.php?title=Programmers_API)

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
Read on how I developed the gem [here]()

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/thetvdb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
