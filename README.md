# Stripe Ruby Library

[![Build Status](https://travis-ci.org/stripe/stripe-ruby.svg?branch=master)](https://travis-ci.org/stripe/stripe-ruby)
[![Coverage Status](https://coveralls.io/repos/github/stripe/stripe-ruby/badge.svg?branch=master)](https://coveralls.io/github/stripe/stripe-ruby?branch=master)

The Stripe Ruby library provides convenient access to the Stripe API from
applications written in the Ruby language. It includes a pre-defined set of
classes for API resources that initialize themselves dynamically from API
responses which makes it compatible with a wide range of versions of the Stripe
API.

The library also provides other features. For example:

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
want to use the package, just run:

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
available in your [Stripe Dashboard][api-keys]. Set `Stripe.api_key` to its
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
  {
    :api_key => "sk_test_...",
    :stripe_account => "acct_...",
    :stripe_version => "2018-02-28"
  }
)

Stripe::Charge.retrieve(
  "ch_18atAXCdGbJFKhCuBAa4532Z",
  {
    :api_key => "sk_test_...",
    :stripe_account => "acct_...",
    :stripe_version => "2018-02-28"
  }
)
```

### Configuring a Client

While a default HTTP client is used by default, it's also possible to have the
library use any client supported by [Faraday][faraday] by initializing a
`Stripe::StripeClient` object and giving it a connection:

``` ruby
conn = Faraday.new
client = Stripe::StripeClient.new(conn)
charge, resp = client.request do
  Stripe::Charge.retrieve(
    "ch_18atAXCdGbJFKhCuBAa4532Z",
  )
end
puts resp.request_id
```

### Configuring a proxy

A proxy can be configured with `Stripe.proxy`:

```ruby
Stripe.proxy = "https://user:pass@example.com:1234"
```

### Configuring an API Version

By default, the library will use the API version pinned to the account making
a request. This can be overridden with this global option:

    Stripe.api_version = "2018-02-28"

See [versioning in the API reference][versioning] for more information.

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

### Configuring Timeouts

Open and read timeouts are configurable:

```java
Stripe.open_timeout = 30 // in seconds
Stripe.read_timeout = 80
```

Please take care to set conservative read timeouts. Some API requests can take
some time, and a short timeout increases the likelihood of a problem within our
servers.

### Logging

The library can be configured to emit logging that will give you better insight
into what it's doing. The `info` logging level is usually most appropriate for
production use, but `debug` is also available for more verbosity.

There are a few options for enabling it:

1. Set the environment variable `STRIPE_LOG` to the value `debug` or `info`:
   ```
   $ export STRIPE_LOG=info
   ```

2. Set `Stripe.log_level`:
   ``` ruby
   Stripe.log_level = Stripe::LEVEL_INFO
   ```

### Writing a Plugin

If you're writing a plugin that uses the library, we'd appreciate it if you
identified using `#set_app_info`:

    Stripe.set_app_info("MyAwesomePlugin", version: "1.2.34", url: "https://myawesomeplugin.info");

This information is passed along when the library makes calls to the Stripe
API.

## Development

The test suite depends on [stripe-mock], so make sure to fetch and run it from a
background terminal ([stripe-mock's README][stripe-mock] also contains
instructions for installing via Homebrew and other methods):

    go get -u github.com/stripe/stripe-mock
    stripe-mock

Run all tests:

    bundle exec rake test

Run a single test suite:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb

Run a single test:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb -n /should.convert.names.to.symbols/

Run the linter:

    bundle exec rake rubocop

Update bundled CA certificates from the [Mozilla cURL release][curl]:

    bundle exec rake update_certs

Update the bundled [stripe-mock] by editing the version number found in
`.travis.yml`.

[api-keys]: https://dashboard.stripe.com/account/apikeys
[connect]: https://stripe.com/connect
[curl]: http://curl.haxx.se/docs/caextract.html
[faraday]: https://github.com/lostisland/faraday
[idempotency-keys]: https://stripe.com/docs/api/ruby#idempotent_requests
[stripe-mock]: https://github.com/stripe/stripe-mock
[versioning]: https://stripe.com/docs/api/ruby#versioning

<!--
# vim: set tw=79:
-->
