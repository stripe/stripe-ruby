---
title: Validate all instance variable keys returned from the API
pr_link: https://github.com/stripe/stripe-ruby/pull/1571
section: Breaking change
released_in_version: 15.0.0
---

* Validate all keys returned from the API, including custom response fields, to make sure they can be set in an instance variable, as brought up in https://github.com/stripe/stripe-ruby/issues/1564
  * We do not set instance variables for invalid field names (as defined by the [Ruby spec](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#ident)). We recommend for custom hash map response fields, use the `[]` accessor.
     ```ruby
     c = client.v1.customers.retrieve("cus_123")
     c.metadata["invalid-variable-name!"]
     c.metadata["valid_key_name_works_too"]
    ```
