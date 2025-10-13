# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ChargeCaptureParams < ::Stripe::RequestParams
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
end
