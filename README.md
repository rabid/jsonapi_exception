# JsonapiException

We're constantly having to rescue exceptions and format them as JSONAPI, so here's an object that does it for you. :sparkles:

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jsonapi_exception'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsonapi_exception

## Usage

In your Rails controller you can do the following:

```ruby
class WidgetController < ApplicationController::Base

  rescue_from WidgetService::InsufficientWidgets do |exception|
    render JsonapiException.new(exception, status: 416).for_render
  end

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rabid/jsonapi_exception.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

