# Stripe Ruby Library [![Build Status](https://travis-ci.org/stripe/stripe-ruby.svg?branch=master)](https://travis-ci.org/stripe/stripe-ruby)

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

### Configuring Timeouts

Open and read timeouts are configurable:

```java
Stripe.open_timeout = 30 // in seconds
Stripe.read_timeout = 80
```

Please take care to set conservative read timeouts. Some API requests can take
some time, and a short timeout increases the likelihood of a problem within our
servers.

### Writing a Plugin

If you're writing a plugin that uses the library, we'd appreciate it if you
identified using `#set_app_info`:

    Stripe.set_app_info("MyAwesomePlugin", version: "1.2.34", url: "https://myawesomeplugin.info");

This information is passed along when the library makes calls to the Stripe
API.

## Development

Run all tests:

    bundle exec rake

Run a single test suite:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb

Run a single test:

    bundle exec ruby -Ilib/ test/stripe/util_test.rb -n /should.convert.names.to.symbols/

Update bundled CA certificates from the [Mozilla cURL release][curl]:

    bundle exec rake update_certs

Update bundled OpenAPI specification from the canonical repository:

    bundle exec rake update_openapi

[api-keys]: https://dashboard.stripe.com/account/apikeys
[connect]: https://stripe.com/connect
[curl]: http://curl.haxx.se/docs/caextract.html
[faraday]: https://github.com/lostisland/faraday
[idempotency-keys]: https://stripe.com/docs/api/ruby#idempotent_requests

<!--
# vim: set tw=79:
-->
