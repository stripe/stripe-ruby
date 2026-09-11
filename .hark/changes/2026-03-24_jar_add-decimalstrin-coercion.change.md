---
title: Add decimal_string coercion for v1 and v2 API fields
pr_link: https://github.com/stripe/stripe-ruby/pull/1829
is_breaking: true
released_in_version: 19.0.0
---

- All `decimal_string` fields changed type from `String` to `BigDecimal` in both request params and response objects. Code that reads or writes these fields as `String` will need to use `BigDecimal` instead. Affected fields across v1 and v2 APIs:
  - **Checkout::Session**: `fx_rate`
  - **Climate::Order**: `metric_tons`; **Climate::Product**: `metric_tons_available`
  - **CreditNoteLineItem**: `unit_amount_decimal`
  - **InvoiceItem**: `quantity_decimal`, `unit_amount_decimal`
  - **InvoiceLineItem**: `quantity_decimal`, `unit_amount_decimal`
  - **Issuing::Authorization** / **Issuing::Transaction** (and TestHelpers): `quantity_decimal`, `unit_cost_decimal`, `gross_amount_decimal`, `local_amount_decimal`, `national_amount_decimal`
  - **Plan**: `amount_decimal`, `flat_amount_decimal`, `unit_amount_decimal`
  - **Price**: `unit_amount_decimal`, `flat_amount_decimal` (including `currency_options` and `tiers`)
  - **V2::Core::Account** / **V2::Core::AccountPerson**: `percent_ownership`
  - Request params on **Invoice**, **Product**, **Quote**, **Subscription**, **SubscriptionItem**, **SubscriptionSchedule**, **PaymentLink**: `unit_amount_decimal`, `flat_amount_decimal`, `quantity_decimal` (where applicable)
