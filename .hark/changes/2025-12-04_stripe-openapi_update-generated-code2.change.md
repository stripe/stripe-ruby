---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1739
is_stripe_api_change: true
released_in_version: 18.1.0-alpha.4
---

* Add support for `check_scanning` on `AccountSession::Component`
* Add support for `client` on `V2::Core::Event::Reason::Request`
* Add support for `stripe_balance_payment` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`
* Add support for `balance_transfer` on `V2::MoneyManagement::ReceivedDebit`
* Add support for `include` on `V2::Core::EventListParams` and `V2::Core::EventRetrieveParams`
