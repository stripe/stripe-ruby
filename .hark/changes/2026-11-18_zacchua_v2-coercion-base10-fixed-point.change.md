---
title: Decode V2 int64 strings in base 10 and encode Float decimals in fixed-point notation
semver_level: patch
---

- `int64_string` response values are now always parsed as base 10. Previously, `"010"` decoded to `8` and `"0x1A"` decoded to `26`; now `"010"` decodes to `10` and radix prefixes raise `ArgumentError`.
- A `Float` passed for a `decimal_string` request field is now sent in fixed-point notation. Previously, `0.00001` was sent as `"1.0e-05"` and `1e15` as `"1.0e+15"`; now they are sent as `"0.00001"` and `"1000000000000000.0"`.
