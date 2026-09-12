---
title: Add TaxIds API
pr_url: https://github.com/stripe/stripe-ruby/pull/1334
released_in_version: 10.10.0
---

* Add support for `all`, `create`, and `retrieve` methods on resource `TaxId`
* The `delete` method now sends a DELETE request to `/v1/tax_ids/{id}` instead of `/v1/customers/{customer}/tax_ids/{id}`. The endpoints are functionally the same when operating on a Customer Tax ID.
* The `resource_url` method on `TaxId` now returns the top-level `/v1/tax_ids/{id}` path instead of the `/v1/customers/{customer}/tax_ids/{id}` path.
