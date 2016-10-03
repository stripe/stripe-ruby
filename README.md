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

* Ruby 1.9.3 or above.
* rest-client

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
available in the [Dashboard][dashboard]. Assign its value to `Stripe.api_key`
and the library will send it along automatically with every request:

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

You can also set a per-request key and/or account like in the examples below.
This is often useful for Connect applications that use multiple API keys during
the lifetime of a process.

Authentication is transparently handled for you in subsequent method calls on
the returned object.

For example:

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

## Development

Run all tests:

    bundle exec rake

Run a single test suite:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb

Run a single test:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb -n /should.convert.names.to.symbols/

Update bundled CA certificates from the [Mozilla cURL release][curl]:

    bundle exec rake update_certs

## Configuration

### ca_bundle_path

The location of a file containing a bundle of CA certificates. By default the
library will use an included bundle that can successfully validate Stripe
certificates.

### max_network_retries

When `max_network_retries` is set to a positive integer, stripe will retry
requests that fail on a network error. Idempotency keys will be added to `POST`
and `DELETE` requests to ensure the safety of retrying. There will be a short delay
between each retry, with an exponential backoff algorithm used to determine the
length of the delay. Default value is 0.

Example:

    Stripe.max_network_retries = 2

[curl]: http://curl.haxx.se/docs/caextract.html
[dashboard]: https://dashboard.stripe.com/account
