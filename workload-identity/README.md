# Stripe workload identity

Lets a [`Stripe::StripeClient`](https://github.com/stripe/stripe-ruby) authenticate using
[workload identity](https://stripe.com/docs/api?lang=ruby) on AWS or Google Cloud, instead of a
long-lived API key. The client exchanges a cloud-signed identity token for a short-lived
Stripe restricted key, which is cached in memory and refreshed automatically.

This gem does not depend on `stripe` — it only implements the small provider interface that
`Stripe::StripeClient.for_workload_identity` expects. It depends on AWS's own `aws-sdk-core`
gem and Google's own [`googleauth`](https://github.com/googleapis/google-auth-library-ruby)
gem to obtain identity tokens, so no credentials are ever hand-rolled.

## Requirements

For AWS, your workload's IAM role needs outbound identity federation enabled and permission to
call `sts:GetWebIdentityToken` for the `https://access.stripe.com/wif` audience. AWS credentials
and a region must be available through the usual SDK resolution (environment variables, shared
config, or an attached IAM role).

For GCP, your workload needs to run in a GCP environment that exposes the compatible metadata
identity-token endpoint, with a workload identity allowed to request an identity token.
Supported environments include:

- Compute Engine
- Cloud Run
- Cloud Functions
- GKE with Workload Identity

Before using this in production, set up a workload identity configuration for your workload
in the Stripe Dashboard, and note the workload client ID it gives you.

## Installation

```
gem "stripe"
gem "stripe-workload-identity"
```

## Usage

```ruby
require "stripe"
require "stripe/workload_identity"

client = Stripe::StripeClient.for_workload_identity(
  "oacli_live_...", # workload client ID from the Stripe Dashboard
  Stripe::WorkloadIdentity::GcpWorkloadIdentity.new
)

client.v1.customers.list
```

On AWS, pass `Stripe::WorkloadIdentity::AwsWorkloadIdentity.new` instead:

```ruby
client = Stripe::StripeClient.for_workload_identity(
  "oacli_live_...", # workload client ID from the Stripe Dashboard
  Stripe::WorkloadIdentity::AwsWorkloadIdentity.new
)

client.v1.customers.list
```

`AwsWorkloadIdentity.new` accepts `audience:` and `signing_algorithm:` overrides (only set these if
Stripe has told you to use different values) plus any other keyword, which is forwarded to
`Aws::STS::Client.new` (for example `region:`).

## Development

```
bundle install
bundle exec rake test
```
