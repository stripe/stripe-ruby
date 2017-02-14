# Stripe Ruby Bindings [![Build Status](https://travis-ci.org/stripe/stripe-ruby.svg?branch=master)](https://travis-ci.org/stripe/stripe-ruby)

The Stripe Ruby bindings provide a small SDK for convenient access to the
Stripe API from applications written in the Ruby language. It provides a
pre-defined set of classes for API resources that initialize themselves
dynamically from API responses which allows the bindings to tolerate a number
of different versions of the API.

The bindings also provide other features. For example:

* Easy configuration path for fast setup and use.
* Helpers for pagination.
* Tracking of "fresh" values in API resources so that partial updates can be
  executed.
* Built-in mechanisms for the serialization of parameters according to the
  expectations of Stripe's API.

## Documentation

See the [Ruby API docs](https://stripe.com/docs/api/ruby#intro).

## Installation

You don't need this source code unless you want to modify the gem. If you just
want to use the Stripe Ruby bindings, you should run:

    gem install stripe

If you want to build the gem from source:

    gem build stripe.gemspec

### Requirements

* Ruby 2.0+.

### Bundler

If you are installing via bundler, you should be sure to use the https rubygems
source in your Gemfile, as any gems fetched over http could potentially be
compromised in transit and alter the code of gems fetched securely over https:

``` ruby
source 'https://rubygems.org'

gem 'rails'
gem 'stripe'
```

## Usage

The library needs to be configured with your account's secret key which is
available in your [Stripe Dashboard][dashboard]. Set `Stripe.api_key` to its
value:

``` ruby
require "stripe"
Stripe.api_key = "sk_test_..."

# list charges
Stripe::Charge.list()

# retrieve single charge
Stripe::Charge.retrieve(
  "ch_18atAXCdGbJFKhCuBAa4532Z",
)
```

### Per-request Configuration

For apps that need to use multiple keys during the lifetime of a process, like
one that uses [Stripe Connect][connect], it's also possible to set a
per-request key and/or account:

``` ruby
require "stripe"

Stripe::Charge.list(
  {},
  :api_key => "sk_test_...",
  :stripe_account => "acct_..."
)

Stripe::Charge.retrieve(
  "ch_18atAXCdGbJFKhCuBAa4532Z",
  :api_key => "sk_test_...",
  :stripe_account => "acct_..."
)
```

### Configuring a Client

While a default HTTP client is used by default, it's also possible to have the
library use any client supported by [Faraday][faraday] by initializing a
`Stripe::StripeClient` object and giving it a connection:

``` ruby
conn = Faraday.new
client = Stripe::StripeClient.new(conn)
client.request do
  charge, resp = Stripe::Charge.retrieve(
    "ch_18atAXCdGbJFKhCuBAa4532Z",
  )
end
puts resp.request_id
```

### Configuring CA Bundles

By default, the library will use its own internal bundle of known CA
certificates, but it's possible to configure your own:

    Stripe.ca_bundle_path = "path/to/ca/bundle"

### Configuring Automatic Retries

The library can be configured to automatically retry requests that fail due to
an intermittent network problem:

    Stripe.max_network_retries = 2

[Idempotency keys][idempotency-keys] are added to requests to guarantee that
retries are safe.

## Development

Run all tests:

    bundle exec rake

Run a single test suite:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb

Run a single test:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb -n /should.convert.names.to.symbols/

Update bundled CA certificates from the [Mozilla cURL release][curl]:

    bundle exec rake update_certs

[connect]: https://stripe.com/connect
[curl]: http://curl.haxx.se/docs/caextract.html
[faraday]: https://github.com/lostisland/faraday
[idempotency-keys]: https://stripe.com/docs/api/ruby#idempotent_requests
[dashboard]: https://dashboard.stripe.com/account
