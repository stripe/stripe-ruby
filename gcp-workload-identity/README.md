# Stripe GCP workload identity

Lets a [`Stripe::StripeClient`](https://github.com/stripe/stripe-ruby) authenticate using
[workload identity](https://stripe.com/docs/api?lang=ruby) on Google Cloud, instead of a
long-lived API key. The client exchanges a Google-signed identity token for a short-lived
Stripe restricted key, which is cached in memory and refreshed automatically.

This gem does not depend on `stripe` — it only implements the small provider interface that
`Stripe::StripeClient.for_workload_identity` expects. It depends on Google's own
[`googleauth`](https://github.com/googleapis/google-auth-library-ruby) gem to obtain the
identity token, so no credentials are ever hand-rolled.

## Requirements

Your workload needs to run in a GCP environment that exposes the compatible metadata
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
gem "stripe-gcp-workload-identity"
```

## Usage

```ruby
require "stripe"
require "stripe/gcp_workload_identity"

client = Stripe::StripeClient.for_workload_identity(
  "oacli_live_...", # workload client ID from the Stripe Dashboard
  Stripe::GcpWorkloadIdentity::GcpWorkloadIdentity.new
)

client.v1.customers.list
```

## Development

```
bundle install
bundle exec rake test
```
