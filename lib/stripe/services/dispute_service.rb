# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class DisputeService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return disputes associated to the charge specified by this charge ID.
      attr_accessor :charge
      # Only return disputes that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return disputes associated to the PaymentIntent specified by this PaymentIntent ID.
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        charge: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil
      )
        @charge = charge
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @payment_intent = payment_intent
        @starting_after = starting_after
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Evidence < Stripe::RequestParams
        class EnhancedEvidence < Stripe::RequestParams
          class VisaCompellingEvidence3 < Stripe::RequestParams
            class DisputedTransaction < Stripe::RequestParams
              class ShippingAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_accessor :line2
                # ZIP or postal code.
                attr_accessor :postal_code
                # State, county, province, or region.
                attr_accessor :state

                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil
                )
                  @city = city
                  @country = country
                  @line1 = line1
                  @line2 = line2
                  @postal_code = postal_code
                  @state = state
                end
              end
              # User Account ID used to log into business platform. Must be recognizable by the user.
              attr_accessor :customer_account_id
              # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
              attr_accessor :customer_device_fingerprint
              # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
              attr_accessor :customer_device_id
              # The email address of the customer.
              attr_accessor :customer_email_address
              # The IP address that the customer used when making the purchase.
              attr_accessor :customer_purchase_ip
              # Categorization of disputed payment.
              attr_accessor :merchandise_or_services
              # A description of the product or service that was sold.
              attr_accessor :product_description
              # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
              attr_accessor :shipping_address

              def initialize(
                customer_account_id: nil,
                customer_device_fingerprint: nil,
                customer_device_id: nil,
                customer_email_address: nil,
                customer_purchase_ip: nil,
                merchandise_or_services: nil,
                product_description: nil,
                shipping_address: nil
              )
                @customer_account_id = customer_account_id
                @customer_device_fingerprint = customer_device_fingerprint
                @customer_device_id = customer_device_id
                @customer_email_address = customer_email_address
                @customer_purchase_ip = customer_purchase_ip
                @merchandise_or_services = merchandise_or_services
                @product_description = product_description
                @shipping_address = shipping_address
              end
            end

            class PriorUndisputedTransaction < Stripe::RequestParams
              class ShippingAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_accessor :line2
                # ZIP or postal code.
                attr_accessor :postal_code
                # State, county, province, or region.
                attr_accessor :state

                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil
                )
                  @city = city
                  @country = country
                  @line1 = line1
                  @line2 = line2
                  @postal_code = postal_code
                  @state = state
                end
              end
              # Stripe charge ID for the Visa Compelling Evidence 3.0 eligible prior charge.
              attr_accessor :charge
              # User Account ID used to log into business platform. Must be recognizable by the user.
              attr_accessor :customer_account_id
              # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
              attr_accessor :customer_device_fingerprint
              # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
              attr_accessor :customer_device_id
              # The email address of the customer.
              attr_accessor :customer_email_address
              # The IP address that the customer used when making the purchase.
              attr_accessor :customer_purchase_ip
              # A description of the product or service that was sold.
              attr_accessor :product_description
              # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
              attr_accessor :shipping_address

              def initialize(
                charge: nil,
                customer_account_id: nil,
                customer_device_fingerprint: nil,
                customer_device_id: nil,
                customer_email_address: nil,
                customer_purchase_ip: nil,
                product_description: nil,
                shipping_address: nil
              )
                @charge = charge
                @customer_account_id = customer_account_id
                @customer_device_fingerprint = customer_device_fingerprint
                @customer_device_id = customer_device_id
                @customer_email_address = customer_email_address
                @customer_purchase_ip = customer_purchase_ip
                @product_description = product_description
                @shipping_address = shipping_address
              end
            end
            # Disputed transaction details for Visa Compelling Evidence 3.0 evidence submission.
            attr_accessor :disputed_transaction
            # List of exactly two prior undisputed transaction objects for Visa Compelling Evidence 3.0 evidence submission.
            attr_accessor :prior_undisputed_transactions

            def initialize(disputed_transaction: nil, prior_undisputed_transactions: nil)
              @disputed_transaction = disputed_transaction
              @prior_undisputed_transactions = prior_undisputed_transactions
            end
          end

          class VisaCompliance < Stripe::RequestParams
            # A field acknowledging the fee incurred when countering a Visa compliance dispute. If this field is set to true, evidence can be submitted for the compliance dispute. Stripe collects a 500 USD (or local equivalent) amount to cover the network costs associated with resolving compliance disputes. Stripe refunds the 500 USD network fee if you win the dispute.
            attr_accessor :fee_acknowledged

            def initialize(fee_acknowledged: nil)
              @fee_acknowledged = fee_acknowledged
            end
          end
          # Evidence provided for Visa Compelling Evidence 3.0 evidence submission.
          attr_accessor :visa_compelling_evidence_3
          # Evidence provided for Visa compliance evidence submission.
          attr_accessor :visa_compliance

          def initialize(visa_compelling_evidence_3: nil, visa_compliance: nil)
            @visa_compelling_evidence_3 = visa_compelling_evidence_3
            @visa_compliance = visa_compliance
          end
        end
        # Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity. Has a maximum character count of 20,000.
        attr_accessor :access_activity_log
        # The billing address provided by the customer.
        attr_accessor :billing_address
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
        attr_accessor :cancellation_policy
        # An explanation of how and when the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
        attr_accessor :cancellation_policy_disclosure
        # A justification for why the customer's subscription was not canceled. Has a maximum character count of 20,000.
        attr_accessor :cancellation_rebuttal
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
        attr_accessor :customer_communication
        # The email address of the customer.
        attr_accessor :customer_email_address
        # The name of the customer.
        attr_accessor :customer_name
        # The IP address that the customer used when making the purchase.
        attr_accessor :customer_purchase_ip
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
        attr_accessor :customer_signature
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
        attr_accessor :duplicate_charge_documentation
        # An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate. Has a maximum character count of 20,000.
        attr_accessor :duplicate_charge_explanation
        # The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
        attr_accessor :duplicate_charge_id
        # Additional evidence for qualifying evidence programs.
        attr_accessor :enhanced_evidence
        # A description of the product or service that was sold. Has a maximum character count of 20,000.
        attr_accessor :product_description
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
        attr_accessor :receipt
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
        attr_accessor :refund_policy
        # Documentation demonstrating that the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
        attr_accessor :refund_policy_disclosure
        # A justification for why the customer is not entitled to a refund. Has a maximum character count of 20,000.
        attr_accessor :refund_refusal_explanation
        # The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
        attr_accessor :service_date
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
        attr_accessor :service_documentation
        # The address to which a physical product was shipped. You should try to include as complete address information as possible.
        attr_accessor :shipping_address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
        attr_accessor :shipping_carrier
        # The date on which a physical product began its route to the shipping address, in a clear human-readable format.
        attr_accessor :shipping_date
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
        attr_accessor :shipping_documentation
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        attr_accessor :shipping_tracking_number
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
        attr_accessor :uncategorized_file
        # Any additional evidence or statements. Has a maximum character count of 20,000.
        attr_accessor :uncategorized_text

        def initialize(
          access_activity_log: nil,
          billing_address: nil,
          cancellation_policy: nil,
          cancellation_policy_disclosure: nil,
          cancellation_rebuttal: nil,
          customer_communication: nil,
          customer_email_address: nil,
          customer_name: nil,
          customer_purchase_ip: nil,
          customer_signature: nil,
          duplicate_charge_documentation: nil,
          duplicate_charge_explanation: nil,
          duplicate_charge_id: nil,
          enhanced_evidence: nil,
          product_description: nil,
          receipt: nil,
          refund_policy: nil,
          refund_policy_disclosure: nil,
          refund_refusal_explanation: nil,
          service_date: nil,
          service_documentation: nil,
          shipping_address: nil,
          shipping_carrier: nil,
          shipping_date: nil,
          shipping_documentation: nil,
          shipping_tracking_number: nil,
          uncategorized_file: nil,
          uncategorized_text: nil
        )
          @access_activity_log = access_activity_log
          @billing_address = billing_address
          @cancellation_policy = cancellation_policy
          @cancellation_policy_disclosure = cancellation_policy_disclosure
          @cancellation_rebuttal = cancellation_rebuttal
          @customer_communication = customer_communication
          @customer_email_address = customer_email_address
          @customer_name = customer_name
          @customer_purchase_ip = customer_purchase_ip
          @customer_signature = customer_signature
          @duplicate_charge_documentation = duplicate_charge_documentation
          @duplicate_charge_explanation = duplicate_charge_explanation
          @duplicate_charge_id = duplicate_charge_id
          @enhanced_evidence = enhanced_evidence
          @product_description = product_description
          @receipt = receipt
          @refund_policy = refund_policy
          @refund_policy_disclosure = refund_policy_disclosure
          @refund_refusal_explanation = refund_refusal_explanation
          @service_date = service_date
          @service_documentation = service_documentation
          @shipping_address = shipping_address
          @shipping_carrier = shipping_carrier
          @shipping_date = shipping_date
          @shipping_documentation = shipping_documentation
          @shipping_tracking_number = shipping_tracking_number
          @uncategorized_file = uncategorized_file
          @uncategorized_text = uncategorized_text
        end
      end
      # Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
      attr_accessor :evidence
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Whether to immediately submit evidence to the bank. If `false`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to `true` (the default).
      attr_accessor :submit

      def initialize(evidence: nil, expand: nil, metadata: nil, submit: nil)
        @evidence = evidence
        @expand = expand
        @metadata = metadata
        @submit = submit
      end
    end

    class CloseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def close(dispute, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your disputes.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/disputes", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the dispute with the given ID.
    def retrieve(dispute, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/disputes/%<dispute>s", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # When you get a dispute, contacting your customer is always the best first step. If that doesn't work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your [dashboard](https://dashboard.stripe.com/disputes), but if you prefer, you can use the API to submit evidence programmatically.
    #
    # Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our [guide to dispute types](https://stripe.com/docs/disputes/categories).
    def update(dispute, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/disputes/%<dispute>s", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
