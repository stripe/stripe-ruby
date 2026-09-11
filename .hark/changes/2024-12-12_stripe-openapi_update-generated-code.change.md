---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1499
is_stripe_api_change: true
released_in_version: 13.3.0-beta.3
---

* Add support for `AllowRedisplay` on `Card` and `Source`
* Add support for new values `am_tin`, `ao_tin`, `ba_tin`, `bb_tin`, `bs_tin`, `cd_nif`, `gn_nif`, `kh_tin`, `me_pib`, `mk_vat`, `mr_nif`, `np_pan`, `sn_ninea`, `sr_fin`, `tj_tin`, `ug_tin`, `zm_tin`, and `zw_tin` on enums `CheckoutSessionCollectedInformationTaxIdsType` and `OrderTaxDetailsTaxIdsType`
* Add support for new value `network_fallback` on enum `IssuingAuthorizationRequestHistoryReason`
* Remove support for `AmountRefunded` on `PaymentRecord`
* Add support for `Account` on `TerminalReaderActionCollectPaymentMethod`, `TerminalReaderActionConfirmPaymentIntent`, `TerminalReaderActionProcessPaymentIntent`, and `TerminalReaderActionRefundPayment`
