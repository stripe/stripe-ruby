---
title: Update static methods for delete/list on BankAccount/Card to throw NotImplementedError
pr_link: https://github.com/stripe/stripe-ruby/pull/1420
released_in_version: 12.1.0
---

* The below methods have been throwing `InvalidRequestError` because the urls used to make the requests have been buggy. Updating them to throw `NotImplementedError` instead just like their counterparts for update & retrieve because they cannot be implemented without the parent id.

Methods affected | Use these instead in the context of payment method | Use these in the context of external accounts
------ | ------ | ----
Stripe:: BankAccount.delete | Stripe::Customer.delete_source | Stripe::Account.delete_external_account
Stripe:: BankAccount.list | Stripe::Customer.list_sources | Stripe::Customer.list_external_accounts
Stripe:: Card.delete | Stripe::Customer.delete_source | Stripe::Account.delete_external_account
Stripe:: Card.list | Stripe::Customer.list_sources | Stripe::Customer.list_external_accounts
