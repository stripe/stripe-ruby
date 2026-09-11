---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1702
is_stripe_api_change: true
released_in_version: 17.1.0-alpha.3
---

* Add support for new resources `DelegatedCheckout::RequestedSession` and `Identity::BlocklistEntry`
* Add support for `confirm`, `create`, `expire`, `retrieve`, and `update` methods on resource `DelegatedCheckout::RequestedSession`
* Add support for `create`, `disable`, `list`, and `retrieve` methods on resource `Identity::BlocklistEntry`
* Add support for `blocked_by_entry` on `Identity::VerificationReport::Document`, `Identity::VerificationReport::Selfie`, and `Identity::VerificationReportListParams`
