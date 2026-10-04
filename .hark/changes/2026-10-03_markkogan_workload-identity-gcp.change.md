---
title: Add workload identity authentication, with GCP as the first provider
semver_level: minor
---

Add `Stripe::StripeClient.for_workload_identity`, which authenticates using a short-lived restricted key obtained by exchanging a cloud provider-signed identity assertion, instead of a long-lived API key. Add a separate `stripe-gcp-workload-identity` gem (no dependency on `stripe`) that supplies a Google-signed identity assertion on Compute Engine and Cloud Run.
