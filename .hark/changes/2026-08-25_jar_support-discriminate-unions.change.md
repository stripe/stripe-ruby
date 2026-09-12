---
title: Support discriminated unions in the V2 runtime
pr_url: https://github.com/stripe/stripe-ruby/pull/1923
released_in_version: 19.6.0
---

- Adds support for discriminated union (polymorphic) parameters and response fields in the V2 runtime. 
- Serializing a discriminated union parameter whose discriminator is missing, or not a String or Symbol, raises `ArgumentError` rather than sending the value uncoerced. Callers building a union parameter as a plain Hash must include the discriminator.
- Adds `nullable` field encoding support, so `int64_string` and `decimal_string` fields wrapped in a nullable coerce correctly.
