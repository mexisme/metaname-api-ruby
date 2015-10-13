# Metaname::Api

This is a experimental wrapper for the Metaname API, to test working with it.
It's [definitely] not finished, but is expected to be once the decision on a DNS provider is made.

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

## Contributing

Pull requests welcome!
