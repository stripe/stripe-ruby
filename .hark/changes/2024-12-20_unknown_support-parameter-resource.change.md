---
title: Support parameter and resource fields with typed RBIs
released_in_version: 13.4.0-beta.1
---

* [#1509](https://github.com/stripe/stripe-ruby/pull/1509) (beta) Publish RBIs with gem
* [#1505](https://github.com/stripe/stripe-ruby/pull/1505) Add method parameter type classes to all resources and services

* Add method parameter classes for all resources and service methods.
* These changes are NOT breaking and are purely additive. The method parameter classes are not required, we still accept hashes as well as the new `RequestParams` classes. Any additional gated parameters are still available to pass via hash. Resource fields define publicly documented fields and other deserialized fields are still accessible.
