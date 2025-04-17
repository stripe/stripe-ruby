# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ChargeService < StripeService
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
      # Only return charges that were created during the given date interval.
      attr_accessor :created
      # Only return charges for the customer specified by this customer ID.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return charges that were created by the PaymentIntent specified by this PaymentIntent ID.
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return charges for this transfer group, limited to 100.
      attr_accessor :transfer_group

      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil,
        transfer_group: nil
      )
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @payment_intent = payment_intent
        @starting_after = starting_after
        @transfer_group = transfer_group
      end
    end

    class CreateParams < Stripe::RequestParams
      class Destination < Stripe::RequestParams
        # ID of an existing, connected Stripe account.
        attr_accessor :account
        # The amount to transfer to the destination account without creating an `Application Fee` object. Cannot be combined with the `application_fee` parameter. Must be less than or equal to the charge amount.
        attr_accessor :amount

        def initialize(account: nil, amount: nil)
          @account = account
          @amount = amount
        end
      end

      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        attr_accessor :session

        def initialize(session: nil)
          @session = session
        end
      end

      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
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
        # Shipping address.
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        attr_accessor :carrier
        # Recipient name.
        attr_accessor :name
        # Recipient phone (including extension).
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        attr_accessor :tracking_number

        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil)
          @address = address
          @carrier = carrier
          @name = name
          @phone = phone
          @tracking_number = tracking_number
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        attr_accessor :destination

        def initialize(amount: nil, destination: nil)
          @amount = amount
          @destination = destination
        end
      end
      # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      attr_accessor :amount
      # Attribute for param field application_fee
      attr_accessor :application_fee
      # A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/connect/direct-charges#collect-fees).
      attr_accessor :application_fee_amount
      # Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://stripe.com/docs/api#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://stripe.com/docs/charges/placing-a-hold) documentation.
      attr_accessor :capture
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # The ID of an existing customer that will be charged in this request.
      attr_accessor :customer
      # An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      attr_accessor :description
      # Attribute for param field destination
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The Stripe account ID for which these funds are intended. Automatically set if you use the `destination` parameter. For details, see [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant).
      attr_accessor :on_behalf_of
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      attr_accessor :radar_options
      # The email address to which this charge's [receipt](https://stripe.com/docs/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://stripe.com/docs/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      attr_accessor :shipping
      # A payment source to be charged. This can be the ID of a [card](https://stripe.com/docs/api#cards) (i.e., credit or debit card), a [bank account](https://stripe.com/docs/api#bank_accounts), a [source](https://stripe.com/docs/api#sources), a [token](https://stripe.com/docs/api#tokens), or a [connected account](https://stripe.com/docs/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://stripe.com/docs/api#cards), [bank accounts](https://stripe.com/docs/api#bank_accounts), and attached [sources](https://stripe.com/docs/api#sources)---you must also pass the ID of the associated customer.
      attr_accessor :source
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options).
      attr_accessor :transfer_group

      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        capture: nil,
        currency: nil,
        customer: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        on_behalf_of: nil,
        radar_options: nil,
        receipt_email: nil,
        shipping: nil,
        source: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      )
        @amount = amount
        @application_fee = application_fee
        @application_fee_amount = application_fee_amount
        @capture = capture
        @currency = currency
        @customer = customer
        @description = description
        @destination = destination
        @expand = expand
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @radar_options = radar_options
        @receipt_email = receipt_email
        @shipping = shipping
        @source = source
        @statement_descriptor = statement_descriptor
        @statement_descriptor_suffix = statement_descriptor_suffix
        @transfer_data = transfer_data
        @transfer_group = transfer_group
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
      class FraudDetails < Stripe::RequestParams
        # Either `safe` or `fraudulent`.
        attr_accessor :user_report

        def initialize(user_report: nil)
          @user_report = user_report
        end
      end

      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class PickupAddress < Stripe::RequestParams
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

          class ReturnAddress < Stripe::RequestParams
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
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          attr_accessor :booking_number
          # Class code of the car.
          attr_accessor :car_class_code
          # Make of the car.
          attr_accessor :car_make
          # Model of the car.
          attr_accessor :car_model
          # The name of the rental car company.
          attr_accessor :company
          # The customer service phone number of the car rental company.
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          attr_accessor :days_rented
          # Delivery details for this purchase.
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          attr_accessor :drivers
          # List of additional charges being billed.
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          attr_accessor :no_show
          # Car pick-up address.
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          attr_accessor :pickup_at
          # Rental rate.
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          attr_accessor :renter_name
          # Car return address.
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          attr_accessor :tax_exempt

          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          )
            @affiliate = affiliate
            @booking_number = booking_number
            @car_class_code = car_class_code
            @car_make = car_make
            @car_model = car_model
            @company = company
            @customer_service_phone_number = customer_service_phone_number
            @days_rented = days_rented
            @delivery = delivery
            @drivers = drivers
            @extra_charges = extra_charges
            @no_show = no_show
            @pickup_address = pickup_address
            @pickup_at = pickup_at
            @rate_amount = rate_amount
            @rate_interval = rate_interval
            @renter_name = renter_name
            @return_address = return_address
            @return_at = return_at
            @tax_exempt = tax_exempt
          end
        end

        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
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

          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          attr_accessor :access_controlled_venue
          # The event location's address.
          attr_accessor :address
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The name of the company
          attr_accessor :company
          # Delivery details for this purchase.
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          attr_accessor :genre
          # The name of the event.
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          attr_accessor :starts_at

          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          )
            @access_controlled_venue = access_controlled_venue
            @address = address
            @affiliate = affiliate
            @company = company
            @delivery = delivery
            @ends_at = ends_at
            @genre = genre
            @name = name
            @starts_at = starts_at
          end
        end

        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Segment < Stripe::RequestParams
            # The flight segment amount.
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            attr_accessor :departure_airport
            # The flight number associated with the segment
            attr_accessor :flight_number
            # The fare class for the segment.
            attr_accessor :service_class

            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            )
              @amount = amount
              @arrival_airport = arrival_airport
              @arrives_at = arrives_at
              @carrier = carrier
              @departs_at = departs_at
              @departure_airport = departure_airport
              @flight_number = flight_number
              @service_class = service_class
            end
          end
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          attr_accessor :carrier
          # Delivery details for this purchase.
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          attr_accessor :ticket_number

          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          )
            @affiliate = affiliate
            @agency_number = agency_number
            @carrier = carrier
            @delivery = delivery
            @passenger_name = passenger_name
            @passengers = passengers
            @segments = segments
            @ticket_number = ticket_number
          end
        end

        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
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

          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end
          # The lodging location's address.
          attr_accessor :address
          # The number of adults on the booking
          attr_accessor :adults
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          attr_accessor :booking_number
          # The lodging category
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          attr_accessor :delivery
          # List of additional charges being billed.
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          attr_accessor :no_show
          # The number of rooms on the booking
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          attr_accessor :passengers
          # The phone number of the lodging location.
          attr_accessor :property_phone_number
          # The room class for this purchase.
          attr_accessor :room_class
          # The number of room nights
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          attr_accessor :total_room_tax_amount
          # The total tax amount
          attr_accessor :total_tax_amount

          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          )
            @address = address
            @adults = adults
            @affiliate = affiliate
            @booking_number = booking_number
            @category = category
            @checkin_at = checkin_at
            @checkout_at = checkout_at
            @customer_service_phone_number = customer_service_phone_number
            @daily_room_rate_amount = daily_room_rate_amount
            @delivery = delivery
            @extra_charges = extra_charges
            @fire_safety_act_compliance = fire_safety_act_compliance
            @name = name
            @no_show = no_show
            @number_of_rooms = number_of_rooms
            @passengers = passengers
            @property_phone_number = property_phone_number
            @room_class = room_class
            @room_nights = room_nights
            @total_room_tax_amount = total_room_tax_amount
            @total_tax_amount = total_tax_amount
          end
        end

        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval

            def initialize(count: nil, interval: nil)
              @count = count
              @interval = interval
            end
          end
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          attr_accessor :starts_at

          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          )
            @affiliate = affiliate
            @auto_renewal = auto_renewal
            @billing_interval = billing_interval
            @ends_at = ends_at
            @name = name
            @starts_at = starts_at
          end
        end
        # Car rental details for this PaymentIntent.
        attr_accessor :car_rental
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        attr_accessor :customer_reference
        # Event details for this PaymentIntent
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        attr_accessor :lodging
        # A unique value assigned by the business to identify the transaction.
        attr_accessor :order_reference
        # Subscription details for this PaymentIntent
        attr_accessor :subscription

        def initialize(
          car_rental: nil,
          customer_reference: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          order_reference: nil,
          subscription: nil
        )
          @car_rental = car_rental
          @customer_reference = customer_reference
          @event_details = event_details
          @flight = flight
          @lodging = lodging
          @order_reference = order_reference
          @subscription = subscription
        end
      end

      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
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
        # Shipping address.
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        attr_accessor :carrier
        # Recipient name.
        attr_accessor :name
        # Recipient phone (including extension).
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        attr_accessor :tracking_number

        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil)
          @address = address
          @carrier = carrier
          @name = name
          @phone = phone
          @tracking_number = tracking_number
        end
      end
      # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
      attr_accessor :customer
      # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
      attr_accessor :fraud_details
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Provides industry-specific information about the charge.
      attr_accessor :payment_details
      # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      attr_accessor :shipping
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      attr_accessor :transfer_group

      def initialize(
        customer: nil,
        description: nil,
        expand: nil,
        fraud_details: nil,
        metadata: nil,
        payment_details: nil,
        receipt_email: nil,
        shipping: nil,
        transfer_group: nil
      )
        @customer = customer
        @description = description
        @expand = expand
        @fraud_details = fraud_details
        @metadata = metadata
        @payment_details = payment_details
        @receipt_email = receipt_email
        @shipping = shipping
        @transfer_group = transfer_group
      end
    end

    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for charges](https://stripe.com/docs/search#query-fields-for-charges).
      attr_accessor :query

      def initialize(expand: nil, limit: nil, page: nil, query: nil)
        @expand = expand
        @limit = limit
        @page = page
        @query = query
      end
    end

    class CaptureParams < Stripe::RequestParams
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class PickupAddress < Stripe::RequestParams
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

          class ReturnAddress < Stripe::RequestParams
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
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          attr_accessor :booking_number
          # Class code of the car.
          attr_accessor :car_class_code
          # Make of the car.
          attr_accessor :car_make
          # Model of the car.
          attr_accessor :car_model
          # The name of the rental car company.
          attr_accessor :company
          # The customer service phone number of the car rental company.
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          attr_accessor :days_rented
          # Delivery details for this purchase.
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          attr_accessor :drivers
          # List of additional charges being billed.
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          attr_accessor :no_show
          # Car pick-up address.
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          attr_accessor :pickup_at
          # Rental rate.
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          attr_accessor :renter_name
          # Car return address.
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          attr_accessor :tax_exempt

          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          )
            @affiliate = affiliate
            @booking_number = booking_number
            @car_class_code = car_class_code
            @car_make = car_make
            @car_model = car_model
            @company = company
            @customer_service_phone_number = customer_service_phone_number
            @days_rented = days_rented
            @delivery = delivery
            @drivers = drivers
            @extra_charges = extra_charges
            @no_show = no_show
            @pickup_address = pickup_address
            @pickup_at = pickup_at
            @rate_amount = rate_amount
            @rate_interval = rate_interval
            @renter_name = renter_name
            @return_address = return_address
            @return_at = return_at
            @tax_exempt = tax_exempt
          end
        end

        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
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

          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          attr_accessor :access_controlled_venue
          # The event location's address.
          attr_accessor :address
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The name of the company
          attr_accessor :company
          # Delivery details for this purchase.
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          attr_accessor :genre
          # The name of the event.
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          attr_accessor :starts_at

          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          )
            @access_controlled_venue = access_controlled_venue
            @address = address
            @affiliate = affiliate
            @company = company
            @delivery = delivery
            @ends_at = ends_at
            @genre = genre
            @name = name
            @starts_at = starts_at
          end
        end

        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Segment < Stripe::RequestParams
            # The flight segment amount.
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            attr_accessor :departure_airport
            # The flight number associated with the segment
            attr_accessor :flight_number
            # The fare class for the segment.
            attr_accessor :service_class

            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            )
              @amount = amount
              @arrival_airport = arrival_airport
              @arrives_at = arrives_at
              @carrier = carrier
              @departs_at = departs_at
              @departure_airport = departure_airport
              @flight_number = flight_number
              @service_class = service_class
            end
          end
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          attr_accessor :carrier
          # Delivery details for this purchase.
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          attr_accessor :ticket_number

          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          )
            @affiliate = affiliate
            @agency_number = agency_number
            @carrier = carrier
            @delivery = delivery
            @passenger_name = passenger_name
            @passengers = passengers
            @segments = segments
            @ticket_number = ticket_number
          end
        end

        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
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

          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              attr_accessor :phone

              def initialize(email: nil, name: nil, phone: nil)
                @email = email
                @name = name
                @phone = phone
              end
            end
            # The delivery method for the payment
            attr_accessor :mode
            # Details of the recipient.
            attr_accessor :recipient

            def initialize(mode: nil, recipient: nil)
              @mode = mode
              @recipient = recipient
            end
          end

          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end
          # The lodging location's address.
          attr_accessor :address
          # The number of adults on the booking
          attr_accessor :adults
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          attr_accessor :booking_number
          # The lodging category
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          attr_accessor :delivery
          # List of additional charges being billed.
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          attr_accessor :no_show
          # The number of rooms on the booking
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          attr_accessor :passengers
          # The phone number of the lodging location.
          attr_accessor :property_phone_number
          # The room class for this purchase.
          attr_accessor :room_class
          # The number of room nights
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          attr_accessor :total_room_tax_amount
          # The total tax amount
          attr_accessor :total_tax_amount

          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          )
            @address = address
            @adults = adults
            @affiliate = affiliate
            @booking_number = booking_number
            @category = category
            @checkin_at = checkin_at
            @checkout_at = checkout_at
            @customer_service_phone_number = customer_service_phone_number
            @daily_room_rate_amount = daily_room_rate_amount
            @delivery = delivery
            @extra_charges = extra_charges
            @fire_safety_act_compliance = fire_safety_act_compliance
            @name = name
            @no_show = no_show
            @number_of_rooms = number_of_rooms
            @passengers = passengers
            @property_phone_number = property_phone_number
            @room_class = room_class
            @room_nights = room_nights
            @total_room_tax_amount = total_room_tax_amount
            @total_tax_amount = total_tax_amount
          end
        end

        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            attr_accessor :name

            def initialize(name: nil)
              @name = name
            end
          end

          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval

            def initialize(count: nil, interval: nil)
              @count = count
              @interval = interval
            end
          end
          # Affiliate details for this purchase.
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          attr_accessor :starts_at

          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          )
            @affiliate = affiliate
            @auto_renewal = auto_renewal
            @billing_interval = billing_interval
            @ends_at = ends_at
            @name = name
            @starts_at = starts_at
          end
        end
        # Car rental details for this PaymentIntent.
        attr_accessor :car_rental
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        attr_accessor :customer_reference
        # Event details for this PaymentIntent
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        attr_accessor :lodging
        # A unique value assigned by the business to identify the transaction.
        attr_accessor :order_reference
        # Subscription details for this PaymentIntent
        attr_accessor :subscription

        def initialize(
          car_rental: nil,
          customer_reference: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          order_reference: nil,
          subscription: nil
        )
          @car_rental = car_rental
          @customer_reference = customer_reference
          @event_details = event_details
          @flight = flight
          @lodging = lodging
          @order_reference = order_reference
          @subscription = subscription
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        attr_accessor :amount

        def initialize(amount: nil)
          @amount = amount
        end
      end
      # The amount to capture, which must be less than or equal to the original amount.
      attr_accessor :amount
      # An application fee to add on to this charge.
      attr_accessor :application_fee
      # An application fee amount to add on to this charge, which must be less than or equal to the original amount.
      attr_accessor :application_fee_amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Provides industry-specific information about the charge.
      attr_accessor :payment_details
      # The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
      attr_accessor :receipt_email
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      attr_accessor :transfer_group

      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        expand: nil,
        payment_details: nil,
        receipt_email: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      )
        @amount = amount
        @application_fee = application_fee
        @application_fee_amount = application_fee_amount
        @expand = expand
        @payment_details = payment_details
        @receipt_email = receipt_email
        @statement_descriptor = statement_descriptor
        @statement_descriptor_suffix = statement_descriptor_suffix
        @transfer_data = transfer_data
        @transfer_group = transfer_group
      end
    end

    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://stripe.com/docs/api/payment_intents/capture).
    def capture(charge, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/charges/%<charge>s/capture", { charge: CGI.escape(charge) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # This method is no longer recommended—use the [Payment Intents API](https://stripe.com/docs/api/payment_intents)
    # to initiate a new payment instead. Confirmation of the PaymentIntent creates the Charge
    # object used to request payment.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/charges", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of charges you've previously created. The charges are returned in sorted order, with the most recent charges appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/charges", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of a charge that has previously been created. Supply the unique charge ID that was returned from your previous request, and Stripe will return the corresponding charge information. The same information is returned when creating or refunding the charge.
    def retrieve(charge, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/charges/%<charge>s", { charge: CGI.escape(charge) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Search for charges you've previously created using Stripe's [Search Query Language](https://stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    def search(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/charges/search",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def update(charge, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/charges/%<charge>s", { charge: CGI.escape(charge) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
