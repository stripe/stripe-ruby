---
title: Support for APIs in the new API version 2024-09-30.acacia
pr_link: https://github.com/stripe/stripe-ruby/pull/1458
is_stripe_api_change: true
released_in_version: 13.0.0
---

This release changes the pinned API version to `2024-09-30.acacia`. Please read the [API Changelog](https://docs.stripe.com/changelog/acacia#2024-09-30.acacia) and carefully review the API changes before upgrading.

### ⚠️ Breaking changes

Please refer to our [migration guide for v13](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v13) for more information about the backwards incompatible changes.

#### ❗ `StripeClient` and related changes
* Move `StripeClient` and requestor logic to `APIRequestor`.
  * `StripeClient#request` is still available, but is deprecated and will be removed. We encourage `StripeClient#raw_request` as a replacement (see other breaking changes for more detail).
* Repurpose and introduce `StripeClient` as the the entry-point to the service-based pattern, a new interface for calling the Stripe API with many benefits over the existing resource-based paradigm. Services are available under the `v1` and `v2` accessors.
    * No global config: you can simultaneously use multiple clients with different configuration options (such as API keys)
    * No extra API calls. All API endpoints can be accessed with a single method call. You don't have to call `retrieve` before doing an `update`.
    * No static methods. Much easier mocking.

#### Other breaking changes

* Adjust default values around retries for HTTP requests. You can use the old defaults by setting them explicitly. New values are:
  - max retries: `0` -> `2`
  - max retry delay (seconds) `2` -> `5`
* Remove `StripeClient#connection_manager`. This was a legacy method from years ago.
* Singleton `retrieve` method now requires `params` to be passed as the first argument. Existing calls to singleton `retrieve` method with only `opts` argument will have to be updated to account for the addition of `params` argument.
    ```ruby
    params = { expand: ["available"] }
    opts = { stripe_account: "acct_123" }

    # ❌ No longer works
    Stripe::Balance.retrieve(opts)

    # ✅ Correct way to call retrieve method
    Stripe::Balance.retrieve(params, opts)
    ```
* Moved the `Stripe.raw_request()` method that was recently added to `StripeClient`. This will use the configuration set on the StripeClient instead of the global configuration used before.
* Remove `APIResource.request`. Instead, use `StripeClient#raw_request` now.
    ```ruby
    # Instead of
    Stripe::APIResource.request(:get, "/v1/endpoint", params, opts)

    # do
    client = Stripe::StripeClient.new(...)
    resp = client.raw_request(:get, "/v1/endpoint", params: params, opts: opts)
    ```
* Add an additional parameter to `APIResource.execute_resource_request`. However, we discourage use of this in favor of `StripeClient#raw_request`.
    ```ruby
    APIResource.execute_resource_request(method, url, params = {}, opts = {}, usage = [])
    # is now, with base_address being one of [:api, :files, :connect, :meter_events]
    APIResource.execute_resource_request(method, url, base_address = :api, params = {}, opts = {}, usage = [])
    ```
* Change parameters to `APIRequestor.execute_request` (previously `StripeClient.execute_request`). It now returns all request options from our internal request framework as the second value in the returned tuple, instead of only the API key used:
  ```ruby
  # Before
  obj, api_key = StripeClient.execute_request(method, path, api_base: nil,
                                              api_key: nil, headers: {}, params: {}, usage: [])

  # is now, with base_address being one of [:api, :files, :connect, :meter_events]

  obj, opts = APIRequestor.execute_request(method, path, base_address,
                                          params: {}, opts: {}, usage: [])
  puts(opts) # will output {api_key: "sk_test_123", stripe_account: "acct_123"}
  ```


### Additions
* Add support for new Usage Billing APIs `Billing.MeterEvent`, `Billing.MeterEventAdjustments`, `Billing.MeterEventSession`, `Billing.MeterEventStream` and the new Events API `Core.Events` in the [v2 namespace ](https://docs.corp.stripe.com/api-v2-overview)
* Add method `parse_thin_event()` on the `StripeClient` class to parse [thin events](https://docs.corp.stripe.com/event-destinations#events-overview).
