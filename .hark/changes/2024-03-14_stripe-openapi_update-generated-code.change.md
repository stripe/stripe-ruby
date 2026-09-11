---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1360
is_stripe_api_change: true
released_in_version: 10.13.0-beta.1
---

- Add support for new resources `Billing.MeterEventAdjustment`, `Billing.MeterEvent`, and `Billing.Meter`
- Add support for `create`, `deactivate`, `list`, `reactivate`, `retrieve`, and `update` methods on resource `Meter`
- Add support for `create` method on resources `MeterEventAdjustment` and `MeterEvent`
- Add support for `create` test helper method on resource `ConfirmationToken`
- Add support for `add_lines`, `remove_lines`, and `update_lines` methods on resource `Invoice`
