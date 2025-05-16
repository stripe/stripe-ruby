# Stripe Ruby Library

[![Gem Version](https://badge.fury.io/rb/stripe.svg)](https://badge.fury.io/rb/stripe)
[![Build Status](https://github.com/stripe/stripe-ruby/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/stripe/stripe-ruby/actions?query=branch%3Amaster)

The Stripe Ruby library provides convenient access to the Stripe API from
applications written in the Ruby language. It includes a pre-defined set of
classes for API resources that initialize themselves dynamically from API
responses which makes it compatible with a wide range of versions of the Stripe
API.

The library also provides other features. For example:

- Easy configuration path for fast setup and use.
- Helpers for pagination.
- Built-in mechanisms for the serialization of parameters according to the
  expectations of Stripe's API.

## Documentation

See the [Ruby API docs](https://stripe.com/docs/api?lang=ruby).

## Installation

You don't need this source code unless you want to modify the gem. If you just
want to use the package, just run:

```sh
gem install stripe
```

If you want to build the gem from source:

```sh
gem build stripe.gemspec
```

### Requirements

- Ruby 2.3+.

### Bundler

If you are installing via bundler, you should be sure to use the https rubygems
source in your Gemfile, as any gems fetched over http could potentially be
compromised in transit and alter the code of gems fetched securely over https:

```ruby
source 'https://rubygems.org'

gem 'rails'
gem 'stripe'
```

## Usage

The library needs to be configured with your account's secret key which is
available in your [Stripe Dashboard][api-keys]. Set `Stripe.api_key` to its
value:

```ruby
require 'stripe'
Stripe.api_key = 'sk_test_...'

# list customers
Stripe::Customer.list()

# retrieve single customer
Stripe::Customer.retrieve('cus_123456789')
```

### Per-request Configuration

For apps that need to use multiple keys during the lifetime of a process, like
one that uses [Stripe Connect][connect], it's also possible to set a
per-request key and/or account:

```ruby
require "stripe"

Stripe::Customer.list(
  {},
  {
    api_key: 'sk_test_...',
    stripe_account: 'acct_...',
    stripe_version: '2018-02-28',
  }
)

Stripe::Customer.retrieve(
  'cus_123456789',
  {
    api_key: 'sk_test_...',
    stripe_account: 'acct_...',
    stripe_version: '2018-02-28',
  }
)

Stripe::Customer.retrieve(
  {
    id: 'cus_123456789',
    expand: %w(balance_transaction)
  },
  {
    stripe_version: '2018-02-28',
    api_key: 'sk_test_...',
  }
)

Stripe::Customer.capture(
  'cus_123456789',
  {},
  {
    stripe_version: '2018-02-28',
    api_key: 'sk_test_...',
  }
)
```

Keep in mind that there are different method signatures depending on the action:

- When operating on a collection (e.g. `.list`, `.create`) the method signature is
  `method(params, opts)`.
- When operating on resource (e.g. `.capture`, `.update`) the method signature is
  `method(id, params, opts)`.
- One exception is that `retrieve`, despite being an operation on a resource, has the signature
  `retrieve(id, opts)`. In addition, it will accept a Hash for the `id` param but will extract the
  `id` key out and use the others as options.

### StripeClient vs legacy pattern

We introduced the `StripeClient` class in v13 of the Ruby SDK. The legacy pattern used prior to that version is still available to use but will be marked as deprecated soon. Review the [migration guide to use StripeClient](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v13) to move from the legacy pattern.

Once the legacy pattern is deprecated, new API endpoints will only be accessible in the StripeClient. While there are no current plans to remove the legacy pattern for existing API endpoints, this may change in the future.

### Accessing resource properties

Both indexer and accessors can be used to retrieve values of resource properties.

```ruby
customer = Stripe::Customer.retrieve('cus_123456789')
puts customer['id']
puts customer.id
```

NOTE: If the resource property is not defined, the accessors will raise an exception, while the indexer will return `nil`.

```ruby
customer = Stripe::Customer.retrieve('cus_123456789')
puts customer['unknown'] # nil
puts customer.unknown # raises NoMethodError
```

### Accessing a response object

Get access to response objects by using the `last_response` property of the returned resource:

```ruby
customer = Stripe::Customer.retrieve('cus_123456789')

print(customer.last_response.http_status) # to retrieve status code
print(customer.last_response.http_headers) # to retrieve headers
```

If you are accessing a response field with custom hashes provided by you, such as `Customer.metadata`,
please access your fields with the `[]` accessor.

### Configuring a proxy

A proxy can be configured with `Stripe.proxy`:

```ruby
Stripe.proxy = 'https://user:pass@example.com:1234'
```

### Configuring an API Version

By default, the library will use the API version pinned to the account making
a request. This can be overridden with this global option:

```ruby
Stripe.api_version = '2018-02-28'
```

See [versioning in the API reference][versioning] for more information.

### Configuring CA Bundles

By default, the library will use its own internal bundle of known CA
certificates, but it's possible to configure your own:

```ruby
Stripe.ca_bundle_path = 'path/to/ca/bundle'
```

### Configuring Automatic Retries

You can enable automatic retries on requests that fail due to a transient
problem by configuring the maximum number of retries:

```ruby
Stripe.max_network_retries = 2
```

Various errors can trigger a retry, like a connection error or a timeout, and
also certain API responses like HTTP status `409 Conflict`.

[Idempotency keys][idempotency-keys] are added to requests to guarantee that
retries are safe.

### Configuring Timeouts

Open, read and write timeouts are configurable:

```ruby
Stripe.open_timeout = 30 # in seconds
Stripe.read_timeout = 80
Stripe.write_timeout = 30 # only supported on Ruby 2.6+
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

   ```sh
   $ export STRIPE_LOG=info
   ```

2. Set `Stripe.log_level`:

   ```ruby
   Stripe.log_level = Stripe::LEVEL_INFO
   ```

### Instrumentation

The library has various hooks that user code can tie into by passing a block to
`Stripe::Instrumentation.subscribe` to be notified about specific events.

#### `request_begin`

Invoked when an HTTP request starts. Receives `RequestBeginEvent` with the
following properties:

- `method`: HTTP method. (`Symbol`)
- `path`: Request path. (`String`)
- `user_data`: A hash on which users can set arbitrary data, and which will be
  passed through to `request_end` invocations. This could be used, for example,
  to assign unique IDs to each request, and it'd work even if many requests are
  running in parallel. All subscribers share the same object for any particular
  request, so they must be careful to use unique keys that will not conflict
  with other subscribers. (`Hash`)

#### `request_end`

Invoked when an HTTP request finishes, regardless of whether it terminated with
a success or error. Receives `RequestEndEvent` with the following properties:

- `duration`: Request duration in seconds. (`Float`)
- `http_status`: HTTP response code (`Integer`) if available, or `nil` in case
  of a lower level network error.
- `method`: HTTP method. (`Symbol`)
- `num_retries`: The number of retries. (`Integer`)
- `path`: Request path. (`String`)
- `user_data`: A hash on which users may have set arbitrary data in
  `request_begin`. See above for more information. (`Hash`)
- `request_id`: HTTP request identifier. (`String`)
- `response_header`: The response headers. (`Hash`)
- `response_body` = The response body. (`String`)
- `request_header` = The request headers. (`Hash`)
- `request_body` = The request body. (`String`)

#### Example

For example:

```ruby
Stripe::Instrumentation.subscribe(:request_end) do |request_event|
  # Filter out high-cardinality ids from `path`
  path_parts = request_event.path.split("/").drop(2)
  resource = path_parts.map { |part| part.match?(/\A[a-z_]+\z/) ? part : ":id" }.join("/")

  tags = {
    method: request_event.method,
    resource: resource,
    code: request_event.http_status,
    retries: request_event.num_retries
  }
  StatsD.distribution('stripe_request', request_event.duration, tags: tags)
end
```

### Writing a Plugin

If you're writing a plugin that uses the library, we'd appreciate it if you
identified using `#set_app_info`:

```ruby
Stripe.set_app_info('MyAwesomePlugin', version: '1.2.34', url: 'https://myawesomeplugin.info')
```

This information is passed along when the library makes calls to the Stripe
API.

### Telemetry

By default, the library sends telemetry to Stripe regarding request latency and feature usage. These
numbers help Stripe improve the overall latency of its API for all users, and
improve popular features.

You can disable this behavior if you prefer:

```ruby
Stripe.enable_telemetry = false
```

### Types

In [v14.0.0](https://github.com/stripe/stripe-python/releases/tag/v7.1.0) and newer, the library provides RBI
static type annotations. See [the wiki](https://github.com/stripe/stripe-ruby/wiki/Static-Type-Annotations)
for an detailed guide.

Please note that these types are available only for static analysis and we only support RBIs at the moment.
Please [report an issue](https://github.com/stripe/stripe-ruby/issues/new/choose)
if you find discrepancies or have issues using types.

The RBIs can be found in the `rbi/stripe/` directory, and to decrease `Tapioca` loading time we pack the gem with the
combined RBI at `rbi/stripe.rbi`.

#### Types and the Versioning Policy

We release type changes in minor releases. While stripe-ruby follows semantic versioning, our semantic
versions describe the runtime behavior of the library alone. Our type annotations are not reflected in the
semantic version. That is, upgrading to a new minor version of `stripe-ruby` might result in your type checker
producing a type error that it didn't before. You can use `~> x.x` or `x.x.x` constrain the version
of `stripe-ruby` in your Gemfile to a certain version or range of `stripe-ruby`.

#### Types and API Versions

The types describe the [Stripe API version](https://stripe.com/docs/api/versioning)
that was the latest at the time of release. This is the version that your library sends
by default. If you are overriding `Stripe.api_version` / `stripe_version` on the StripeClient,
or using a webhook endpoint tied to an older version, be aware that the data
you see at runtime may not match the types.

### Public Preview SDKs

Stripe has features in the [public preview phase](https://docs.stripe.com/release-phases) that can be accessed via versions of this package that have the `-beta.X` suffix like `11.2.0-beta.2`.
We would love for you to try these as we incrementally release new features and improve them based on your feedback.

To install, choose the version that includes support for the preview feature you are interested in by reviewing the [releases page](https://github.com/stripe/stripe-ruby/releases/) and use it in the `gem install` command:

```sh
gem install stripe -v <replace-with-the-version-of-your-choice>
```

You can find the latest version to use in this command from the [releases page](https://github.com/stripe/stripe-ruby/releases/)

> **Note**
> There can be breaking changes between two versions of the public preview SDKs without a bump in the major version. Therefore we recommend pinning the package version to a specific version in your Gemfile. This way you can install the same version each time without breaking changes unless you are intentionally looking for the latest version of the public preview SDK.

We highly recommend keeping an eye on when the beta feature you are interested in goes from beta to stable so that you can move from using a beta version of the SDK to the stable version.

Some preview features require a name and version to be set in the `Stripe-Version` header like `feature_beta=v3`. If your preview feature has this requirement, use the `Stripe.add_beta_version` function (available only in the public preview SDKs):

```python
Stripe.add_beta_version("feature_beta", "v3")
```

### Custom requests

If you:

- would like to send a request to an undocumented API (for example you are in a private beta)
- prefer to bypass the method definitions in the library and specify your request details directly,
- used the method `Stripe::APIResource.request(...)` to specify your own requests, which will soon be broken

you can now use the `raw_request` method on `StripeClient`.

```ruby
client = Stripe::StripeClient.new(...)
resp = client.raw_request(:post, "/v1/beta_endpoint", {param: 123}, {stripe_version: "2022-11-15; feature_beta=v3"})

# (Optional) resp is a StripeResponse. You can use `Stripe.deserialize` to get a StripeObject.
deserialized_resp = client.deserialize(resp.http_body)
```

## Support

New features and bug fixes are released on the latest major version of the Stripe Ruby library. If you are on an older major version, we recommend that you upgrade to the latest in order to use the new features and bug fixes including those for security vulnerabilities. Older major versions of the package will continue to be available for use, but will not be receiving any updates.

## Development

[Contribution guidelines for this project](CONTRIBUTING.md)

The test suite depends on [stripe-mock], so make sure to fetch and run it from a background terminal ([stripe-mock's README][stripe-mock] also contains instructions for installing via Homebrew and other methods):

```sh
go install github.com/stripe/stripe-mock@latest
stripe-mock
```

We use [just](https://github.com/casey/just) for common development tasks. You can install it or run the underlying commands directly (by copying them from the `justfile`). Common tasks include:

Run all tests:

```sh
just test
# or: bundle exec rake test
```

Run a single test suite:

```sh
bundle exec ruby -Ilib/ test/stripe/util_test.rb
```

Run a single test:

```sh
bundle exec ruby -Ilib/ test/stripe/util_test.rb -n /should.convert.names.to.symbols/
```

Run the linter:

```sh
just lint
# or: bundle exec rubocop
```

Update bundled CA certificates from the [Mozilla cURL release][curl]:

```sh
just update-certs
# or: bundle exec rake update_certs
```

Update the bundled [stripe-mock] by editing the version number found in
`.travis.yml`.

[api-keys]: https://dashboard.stripe.com/account/apikeys
[connect]: https://stripe.com/connect
[curl]: http://curl.haxx.se/docs/caextract.html
[idempotency-keys]: https://stripe.com/docs/api/idempotent_requests?lang=ruby
[stripe-mock]: https://github.com/stripe/stripe-mock
[versioning]: https://stripe.com/docs/api/versioning?lang=ruby

<!--
# vim: set tw=79:
-->
