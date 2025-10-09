# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentCaptureParams < ::Stripe::RequestParams
    class AmountDetails < ::Stripe::RequestParams
      class LineItem < ::Stripe::RequestParams
        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            attr_accessor :commodity_code

            def initialize(commodity_code: nil)
              @commodity_code = commodity_code
            end
          end

          class CardPresent < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            attr_accessor :commodity_code

            def initialize(commodity_code: nil)
              @commodity_code = commodity_code
            end
          end

          class Klarna < ::Stripe::RequestParams
            # URL to an image for the product. Max length, 4096 characters.
            attr_accessor :image_url
            # URL to the product page. Max length, 4096 characters.
            attr_accessor :product_url
            # Reference for the subscription this line item is for.
            attr_accessor :subscription_reference

            def initialize(image_url: nil, product_url: nil, subscription_reference: nil)
              @image_url = image_url
              @product_url = product_url
              @subscription_reference = subscription_reference
            end
          end

          class Paypal < ::Stripe::RequestParams
            # Type of the line item.
            attr_accessor :category
            # Description of the line item.
            attr_accessor :description
            # The Stripe account ID of the connected account that sells the item.
            attr_accessor :sold_by

            def initialize(category: nil, description: nil, sold_by: nil)
              @category = category
              @description = description
              @sold_by = sold_by
            end
          end
          # This sub-hash contains line item details that are specific to `card` payment method."
          attr_accessor :card
          # This sub-hash contains line item details that are specific to `card_present` payment method."
          attr_accessor :card_present
          # This sub-hash contains line item details that are specific to `klarna` payment method."
          attr_accessor :klarna
          # This sub-hash contains line item details that are specific to `paypal` payment method."
          attr_accessor :paypal

          def initialize(card: nil, card_present: nil, klarna: nil, paypal: nil)
            @card = card
            @card_present = card_present
            @klarna = klarna
            @paypal = paypal
          end
        end

        class Tax < ::Stripe::RequestParams
          # The total tax on an item. Non-negative integer.
          attr_accessor :total_tax_amount

          def initialize(total_tax_amount: nil)
            @total_tax_amount = total_tax_amount
          end
        end
        # The amount an item was discounted for. Positive integer.
        attr_accessor :discount_amount
        # Payment method-specific information for line items.
        attr_accessor :payment_method_options
        # Unique identifier of the product. At most 12 characters long.
        attr_accessor :product_code
        # Name of the product. At most 100 characters long.
        attr_accessor :product_name
        # Number of items of the product. Positive integer.
        attr_accessor :quantity
        # Contains information about the tax on the item.
        attr_accessor :tax
        # Cost of the product. Non-negative integer.
        attr_accessor :unit_cost
        # A unit of measure for the line item, such as gallons, feet, meters, etc.
        attr_accessor :unit_of_measure

        def initialize(
          discount_amount: nil,
          payment_method_options: nil,
          product_code: nil,
          product_name: nil,
          quantity: nil,
          tax: nil,
          unit_cost: nil,
          unit_of_measure: nil
        )
          @discount_amount = discount_amount
          @payment_method_options = payment_method_options
          @product_code = product_code
          @product_name = product_name
          @quantity = quantity
          @tax = tax
          @unit_cost = unit_cost
          @unit_of_measure = unit_of_measure
        end
      end

      class Shipping < ::Stripe::RequestParams
        # Portion of the amount that is for shipping.
        attr_accessor :amount
        # The postal code that represents the shipping source.
        attr_accessor :from_postal_code
        # The postal code that represents the shipping destination.
        attr_accessor :to_postal_code

        def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil)
          @amount = amount
          @from_postal_code = from_postal_code
          @to_postal_code = to_postal_code
        end
      end

      class Tax < ::Stripe::RequestParams
        # Total portion of the amount that is for tax.
        attr_accessor :total_tax_amount

        def initialize(total_tax_amount: nil)
          @total_tax_amount = total_tax_amount
        end
      end
      # The total discount applied on the transaction.
      attr_accessor :discount_amount
      # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
      attr_accessor :line_items
      # Contains information about the shipping portion of the amount.
      attr_accessor :shipping
      # Contains information about the tax portion of the amount.
      attr_accessor :tax

      def initialize(discount_amount: nil, line_items: nil, shipping: nil, tax: nil)
        @discount_amount = discount_amount
        @line_items = line_items
        @shipping = shipping
        @tax = tax
      end
    end

    class Hooks < ::Stripe::RequestParams
      class Inputs < ::Stripe::RequestParams
        class Tax < ::Stripe::RequestParams
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          attr_accessor :calculation

          def initialize(calculation: nil)
            @calculation = calculation
          end
        end
        # Tax arguments for automations
        attr_accessor :tax

        def initialize(tax: nil)
          @tax = tax
        end
      end
      # Arguments passed in automations
      attr_accessor :inputs

      def initialize(inputs: nil)
        @inputs = inputs
      end
    end

    class PaymentDetails < ::Stripe::RequestParams
      class CarRental < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
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

        class Distance < ::Stripe::RequestParams
          # Distance traveled.
          attr_accessor :amount
          # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
          attr_accessor :unit

          def initialize(amount: nil, unit: nil)
            @amount = amount
            @unit = unit
          end
        end

        class Driver < ::Stripe::RequestParams
          # Driver's identification number.
          attr_accessor :driver_identification_number
          # Driver's tax number.
          attr_accessor :driver_tax_number
          # Full name of the person or entity on the car reservation.
          attr_accessor :name

          def initialize(driver_identification_number: nil, driver_tax_number: nil, name: nil)
            @driver_identification_number = driver_identification_number
            @driver_tax_number = driver_tax_number
            @name = name
          end
        end

        class PickupAddress < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_accessor :line1
          # Address line 2, such as the apartment, suite, unit, or building.
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

        class ReturnAddress < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_accessor :line1
          # Address line 2, such as the apartment, suite, unit, or building.
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
        # The details of the distance traveled during the rental period.
        attr_accessor :distance
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
        # Name of the pickup location.
        attr_accessor :pickup_location_name
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
        # Name of the return location.
        attr_accessor :return_location_name
        # Indicates whether the goods or services are tax-exempt or tax is not collected.
        attr_accessor :tax_exempt
        # The vehicle identification number.
        attr_accessor :vehicle_identification_number

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
          distance: nil,
          drivers: nil,
          extra_charges: nil,
          no_show: nil,
          pickup_address: nil,
          pickup_at: nil,
          pickup_location_name: nil,
          rate_amount: nil,
          rate_interval: nil,
          renter_name: nil,
          return_address: nil,
          return_at: nil,
          return_location_name: nil,
          tax_exempt: nil,
          vehicle_identification_number: nil
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
          @distance = distance
          @drivers = drivers
          @extra_charges = extra_charges
          @no_show = no_show
          @pickup_address = pickup_address
          @pickup_at = pickup_at
          @pickup_location_name = pickup_location_name
          @rate_amount = rate_amount
          @rate_interval = rate_interval
          @renter_name = renter_name
          @return_address = return_address
          @return_at = return_at
          @return_location_name = return_location_name
          @tax_exempt = tax_exempt
          @vehicle_identification_number = vehicle_identification_number
        end
      end

      class EventDetails < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_accessor :line1
          # Address line 2, such as the apartment, suite, unit, or building.
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

        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
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

      class Flight < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
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

        class Passenger < ::Stripe::RequestParams
          # Full name of the person or entity on the flight reservation.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Segment < ::Stripe::RequestParams
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

      class Lodging < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_accessor :line1
          # Address line 2, such as the apartment, suite, unit, or building.
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

        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Delivery < ::Stripe::RequestParams
          class Recipient < ::Stripe::RequestParams
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

        class Passenger < ::Stripe::RequestParams
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
        # Lodging check-in time. Measured in seconds since the Unix epoch.
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

      class Subscription < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # The name of the affiliate that originated the purchase.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class BillingInterval < ::Stripe::RequestParams
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

    class TransferData < ::Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      attr_accessor :amount

      def initialize(amount: nil)
        @amount = amount
      end
    end
    # Provides industry-specific information about the amount.
    attr_accessor :amount_details
    # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
    attr_accessor :amount_to_capture
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :application_fee_amount
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
    attr_accessor :final_capture
    # Automations to be run during the PaymentIntent lifecycle
    attr_accessor :hooks
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Provides industry-specific information about the charge.
    attr_accessor :payment_details
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_accessor :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_accessor :statement_descriptor_suffix
    # The parameters that you can use to automatically create a transfer after the payment
    # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :transfer_data

    def initialize(
      amount_details: nil,
      amount_to_capture: nil,
      application_fee_amount: nil,
      expand: nil,
      final_capture: nil,
      hooks: nil,
      metadata: nil,
      payment_details: nil,
      statement_descriptor: nil,
      statement_descriptor_suffix: nil,
      transfer_data: nil
    )
      @amount_details = amount_details
      @amount_to_capture = amount_to_capture
      @application_fee_amount = application_fee_amount
      @expand = expand
      @final_capture = final_capture
      @hooks = hooks
      @metadata = metadata
      @payment_details = payment_details
      @statement_descriptor = statement_descriptor
      @statement_descriptor_suffix = statement_descriptor_suffix
      @transfer_data = transfer_data
    end
  end
end
