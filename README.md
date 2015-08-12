# Metaname::Api

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/metaname/api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
# NB: Not pushed to any Gem service, yet
gem "metaname-api"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metaname-api

## Usage

TODO: Write this up

In the meantime, take a look at `exe/metaname` code for some command-wrappers.

### Examples

```ruby
@rpc = Metaname::Api::Client.new do |c|
  c.uri = "https://metaname.net/api/1.1"
  c.account_reference = "XXXX"
  c.api_key = "XXXXXXX"
end

@rpc.domain_names
@rpc.register_domain("www.google.com", 12, {}, nil)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/metaname-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

