# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentUpdateParams < ::Stripe::RequestParams
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
            # Unique reference for this line item to correlate it with your system’s internal records. The field is displayed in the Klarna Consumer App if passed.
            attr_accessor :reference
            # Reference for the subscription this line item is for.
            attr_accessor :subscription_reference

            def initialize(
              image_url: nil,
              product_url: nil,
              reference: nil,
              subscription_reference: nil
            )
              @image_url = image_url
              @product_url = product_url
              @reference = reference
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
          # The total amount of tax on a single line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
          #
          # This field is mutually exclusive with the `amount_details[tax][total_tax_amount]` field.
          attr_accessor :total_tax_amount

          def initialize(total_tax_amount: nil)
            @total_tax_amount = total_tax_amount
          end
        end
        # The discount applied on this line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than 0.
        #
        # This field is mutually exclusive with the `amount_details[discount_amount]` field.
        attr_accessor :discount_amount
        # Payment method-specific information for line items.
        attr_accessor :payment_method_options
        # The product code of the line item, such as an SKU. Required for L3 rates. At most 12 characters long.
        attr_accessor :product_code
        # The product name of the line item. Required for L3 rates. At most 1024 characters long.
        #
        # For Cards, this field is truncated to 26 alphanumeric characters before being sent to the card networks. For Paypal, this field is truncated to 127 characters.
        attr_accessor :product_name
        # The quantity of items. Required for L3 rates. An integer greater than 0.
        attr_accessor :quantity
        # Contains information about the tax on the item.
        attr_accessor :tax
        # The unit cost of the line item represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
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
        # If a physical good is being shipped, the cost of shipping represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than or equal to 0.
        attr_accessor :amount
        # If a physical good is being shipped, the postal code of where it is being shipped from. At most 10 alphanumeric characters long, hyphens are allowed.
        attr_accessor :from_postal_code
        # If a physical good is being shipped, the postal code of where it is being shipped to. At most 10 alphanumeric characters long, hyphens are allowed.
        attr_accessor :to_postal_code

        def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil)
          @amount = amount
          @from_postal_code = from_postal_code
          @to_postal_code = to_postal_code
        end
      end

      class Tax < ::Stripe::RequestParams
        # The total amount of tax on the transaction represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Required for L2 rates. An integer greater than or equal to 0.
        #
        # This field is mutually exclusive with the `amount_details[line_items][#][tax][total_tax_amount]` field.
        attr_accessor :total_tax_amount

        def initialize(total_tax_amount: nil)
          @total_tax_amount = total_tax_amount
        end
      end
      # The total discount applied on the transaction represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). An integer greater than 0.
      #
      # This field is mutually exclusive with the `amount_details[line_items][#][discount_amount]` field.
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

    class MandateData < ::Stripe::RequestParams
      class CustomerAcceptance < ::Stripe::RequestParams
        class Online < ::Stripe::RequestParams
          # The IP address from which the Mandate was accepted by the customer.
          attr_accessor :ip_address
          # The user agent of the browser from which the Mandate was accepted by the customer.
          attr_accessor :user_agent

          def initialize(ip_address: nil, user_agent: nil)
            @ip_address = ip_address
            @user_agent = user_agent
          end
        end
        # If this is a Mandate accepted online, this hash contains details about the online acceptance.
        attr_accessor :online
        # The type of customer acceptance information included with the Mandate.
        attr_accessor :type

        def initialize(online: nil, type: nil)
          @online = online
          @type = type
        end
      end
      # This hash contains details about the customer acceptance of the Mandate.
      attr_accessor :customer_acceptance

      def initialize(customer_acceptance: nil)
        @customer_acceptance = customer_acceptance
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

      class CarRentalDatum < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          attr_accessor :code
          # Name of affiliate partner.
          attr_accessor :name

          def initialize(code: nil, name: nil)
            @code = code
            @name = name
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
          class DateOfBirth < ::Stripe::RequestParams
            # Day of birth (1-31).
            attr_accessor :day
            # Month of birth (1-12).
            attr_accessor :month
            # Year of birth (must be greater than 1900).
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end
          # Driver's date of birth.
          attr_accessor :date_of_birth
          # Driver's identification number.
          attr_accessor :driver_identification_number
          # Driver's tax number.
          attr_accessor :driver_tax_number
          # Driver's full name.
          attr_accessor :name

          def initialize(
            date_of_birth: nil,
            driver_identification_number: nil,
            driver_tax_number: nil,
            name: nil
          )
            @date_of_birth = date_of_birth
            @driver_identification_number = driver_identification_number
            @driver_tax_number = driver_tax_number
            @name = name
          end
        end

        class DropOff < ::Stripe::RequestParams
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
          # Address of the rental location.
          attr_accessor :address
          # Location name.
          attr_accessor :location_name
          # Timestamp for the location.
          attr_accessor :time

          def initialize(address: nil, location_name: nil, time: nil)
            @address = address
            @location_name = location_name
            @time = time
          end
        end

        class Insurance < ::Stripe::RequestParams
          # Amount of the insurance coverage in cents.
          attr_accessor :amount
          # Currency of the insurance amount.
          attr_accessor :currency
          # Name of the insurance company.
          attr_accessor :insurance_company_name
          # Type of insurance coverage.
          attr_accessor :insurance_type

          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          )
            @amount = amount
            @currency = currency
            @insurance_company_name = insurance_company_name
            @insurance_type = insurance_type
          end
        end

        class Pickup < ::Stripe::RequestParams
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
          # Address of the rental location.
          attr_accessor :address
          # Location name.
          attr_accessor :location_name
          # Timestamp for the location.
          attr_accessor :time

          def initialize(address: nil, location_name: nil, time: nil)
            @address = address
            @location_name = location_name
            @time = time
          end
        end

        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            attr_accessor :corporate_client_code
            # Coupon code applied to the rental.
            attr_accessor :coupon
            # Maximum number of free miles or kilometers included.
            attr_accessor :maximum_free_miles_or_kilometers

            def initialize(
              corporate_client_code: nil,
              coupon: nil,
              maximum_free_miles_or_kilometers: nil
            )
              @corporate_client_code = corporate_client_code
              @coupon = coupon
              @maximum_free_miles_or_kilometers = maximum_free_miles_or_kilometers
            end
          end

          class ExtraCharge < ::Stripe::RequestParams
            # Amount of the extra charge in cents.
            attr_accessor :amount
            # Type of extra charge.
            attr_accessor :type

            def initialize(amount: nil, type: nil)
              @amount = amount
              @type = type
            end
          end

          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount.
              attr_accessor :amount
              # Tax rate applied.
              attr_accessor :rate
              # Type of tax applied.
              attr_accessor :type

              def initialize(amount: nil, rate: nil, type: nil)
                @amount = amount
                @rate = rate
                @type = type
              end
            end
            # Indicates if the transaction is tax exempt.
            attr_accessor :tax_exempt_indicator
            # Array of tax details.
            attr_accessor :taxes

            def initialize(tax_exempt_indicator: nil, taxes: nil)
              @tax_exempt_indicator = tax_exempt_indicator
              @taxes = taxes
            end
          end
          # Total amount in cents.
          attr_accessor :amount
          # Currency of the amount.
          attr_accessor :currency
          # Discount details for the rental.
          attr_accessor :discounts
          # Additional charges for the rental.
          attr_accessor :extra_charges
          # Rate per unit for the rental.
          attr_accessor :rate_per_unit
          # Unit of measurement for the rate.
          attr_accessor :rate_unit
          # Tax breakdown for the rental.
          attr_accessor :tax

          def initialize(
            amount: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            rate_per_unit: nil,
            rate_unit: nil,
            tax: nil
          )
            @amount = amount
            @currency = currency
            @discounts = discounts
            @extra_charges = extra_charges
            @rate_per_unit = rate_per_unit
            @rate_unit = rate_unit
            @tax = tax
          end
        end

        class Vehicle < ::Stripe::RequestParams
          # Make of the rental vehicle.
          attr_accessor :make
          # Model of the rental vehicle.
          attr_accessor :model
          # Odometer reading at the time of rental.
          attr_accessor :odometer
          # Type of the rental vehicle.
          attr_accessor :type
          # Class of the rental vehicle.
          attr_accessor :vehicle_class
          # Vehicle identification number (VIN).
          attr_accessor :vehicle_identification_number

          def initialize(
            make: nil,
            model: nil,
            odometer: nil,
            type: nil,
            vehicle_class: nil,
            vehicle_identification_number: nil
          )
            @make = make
            @model = model
            @odometer = odometer
            @type = type
            @vehicle_class = vehicle_class
            @vehicle_identification_number = vehicle_identification_number
          end
        end
        # Affiliate (such as travel agency) details for the rental.
        attr_accessor :affiliate
        # Booking confirmation number for the car rental.
        attr_accessor :booking_number
        # Name of the car rental company.
        attr_accessor :carrier_name
        # Customer service phone number for the car rental company.
        attr_accessor :customer_service_phone_number
        # Number of days the car is being rented.
        attr_accessor :days_rented
        # Distance details for the rental.
        attr_accessor :distance
        # List of drivers for the rental.
        attr_accessor :drivers
        # Drop-off location details.
        attr_accessor :drop_off
        # Insurance details for the rental.
        attr_accessor :insurances
        # Indicates if the customer was a no-show.
        attr_accessor :no_show_indicator
        # Pickup location details.
        attr_accessor :pickup
        # Name of the person renting the vehicle.
        attr_accessor :renter_name
        # Total cost breakdown for the rental.
        attr_accessor :total
        # Vehicle details for the rental.
        attr_accessor :vehicle

        def initialize(
          affiliate: nil,
          booking_number: nil,
          carrier_name: nil,
          customer_service_phone_number: nil,
          days_rented: nil,
          distance: nil,
          drivers: nil,
          drop_off: nil,
          insurances: nil,
          no_show_indicator: nil,
          pickup: nil,
          renter_name: nil,
          total: nil,
          vehicle: nil
        )
          @affiliate = affiliate
          @booking_number = booking_number
          @carrier_name = carrier_name
          @customer_service_phone_number = customer_service_phone_number
          @days_rented = days_rented
          @distance = distance
          @drivers = drivers
          @drop_off = drop_off
          @insurances = insurances
          @no_show_indicator = no_show_indicator
          @pickup = pickup
          @renter_name = renter_name
          @total = total
          @vehicle = vehicle
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

      class FlightDatum < ::Stripe::RequestParams
        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          attr_accessor :code
          # Name of affiliate partner.
          attr_accessor :name
          # Code provided by the company to a travel agent authorizing ticket issuance.
          attr_accessor :travel_authorization_code

          def initialize(code: nil, name: nil, travel_authorization_code: nil)
            @code = code
            @name = name
            @travel_authorization_code = travel_authorization_code
          end
        end

        class Insurance < ::Stripe::RequestParams
          # Insurance cost.
          attr_accessor :amount
          # Insurance currency.
          attr_accessor :currency
          # Insurance company name.
          attr_accessor :insurance_company_name
          # Type of insurance.
          attr_accessor :insurance_type

          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          )
            @amount = amount
            @currency = currency
            @insurance_company_name = insurance_company_name
            @insurance_type = insurance_type
          end
        end

        class Passenger < ::Stripe::RequestParams
          # Passenger's full name.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Segment < ::Stripe::RequestParams
          class Arrival < ::Stripe::RequestParams
            # Arrival airport IATA code.
            attr_accessor :airport
            # Arrival date/time.
            attr_accessor :arrives_at
            # Arrival city.
            attr_accessor :city
            # Arrival country.
            attr_accessor :country

            def initialize(airport: nil, arrives_at: nil, city: nil, country: nil)
              @airport = airport
              @arrives_at = arrives_at
              @city = city
              @country = country
            end
          end

          class Departure < ::Stripe::RequestParams
            # Departure airport IATA code.
            attr_accessor :airport
            # Departure city.
            attr_accessor :city
            # Departure country.
            attr_accessor :country
            # Departure date/time.
            attr_accessor :departs_at

            def initialize(airport: nil, city: nil, country: nil, departs_at: nil)
              @airport = airport
              @city = city
              @country = country
              @departs_at = departs_at
            end
          end
          # Segment fare amount.
          attr_accessor :amount
          # Arrival details.
          attr_accessor :arrival
          # Airline carrier code.
          attr_accessor :carrier_code
          # Carrier name.
          attr_accessor :carrier_name
          # Segment currency.
          attr_accessor :currency
          # Departure details.
          attr_accessor :departure
          # Exchange ticket number.
          attr_accessor :exchange_ticket_number
          # Fare basis code.
          attr_accessor :fare_basis_code
          # Additional fees.
          attr_accessor :fees
          # Flight number.
          attr_accessor :flight_number
          # Stopover indicator.
          attr_accessor :is_stop_over_indicator
          # Refundable ticket indicator.
          attr_accessor :refundable
          # Class of service.
          attr_accessor :service_class
          # Tax amount for segment.
          attr_accessor :tax_amount
          # Ticket number.
          attr_accessor :ticket_number

          def initialize(
            amount: nil,
            arrival: nil,
            carrier_code: nil,
            carrier_name: nil,
            currency: nil,
            departure: nil,
            exchange_ticket_number: nil,
            fare_basis_code: nil,
            fees: nil,
            flight_number: nil,
            is_stop_over_indicator: nil,
            refundable: nil,
            service_class: nil,
            tax_amount: nil,
            ticket_number: nil
          )
            @amount = amount
            @arrival = arrival
            @carrier_code = carrier_code
            @carrier_name = carrier_name
            @currency = currency
            @departure = departure
            @exchange_ticket_number = exchange_ticket_number
            @fare_basis_code = fare_basis_code
            @fees = fees
            @flight_number = flight_number
            @is_stop_over_indicator = is_stop_over_indicator
            @refundable = refundable
            @service_class = service_class
            @tax_amount = tax_amount
            @ticket_number = ticket_number
          end
        end

        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            attr_accessor :corporate_client_code

            def initialize(corporate_client_code: nil)
              @corporate_client_code = corporate_client_code
            end
          end

          class ExtraCharge < ::Stripe::RequestParams
            # Amount of additional charges.
            attr_accessor :amount
            # Type of additional charges.
            attr_accessor :type

            def initialize(amount: nil, type: nil)
              @amount = amount
              @type = type
            end
          end

          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount.
              attr_accessor :amount
              # Tax rate.
              attr_accessor :rate
              # Type of tax.
              attr_accessor :type

              def initialize(amount: nil, rate: nil, type: nil)
                @amount = amount
                @rate = rate
                @type = type
              end
            end
            # Array of tax details.
            attr_accessor :taxes

            def initialize(taxes: nil)
              @taxes = taxes
            end
          end
          # Total flight amount.
          attr_accessor :amount
          # Reason for credit.
          attr_accessor :credit_reason
          # Total currency.
          attr_accessor :currency
          # Discount details.
          attr_accessor :discounts
          # Additional charges.
          attr_accessor :extra_charges
          # Tax breakdown.
          attr_accessor :tax

          def initialize(
            amount: nil,
            credit_reason: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            tax: nil
          )
            @amount = amount
            @credit_reason = credit_reason
            @currency = currency
            @discounts = discounts
            @extra_charges = extra_charges
            @tax = tax
          end
        end
        # Affiliate details if applicable.
        attr_accessor :affiliate
        # Reservation reference.
        attr_accessor :booking_number
        # Computerized reservation system used to make the reservation and purchase the ticket.
        attr_accessor :computerized_reservation_system
        # Ticket restrictions.
        attr_accessor :endorsements_and_restrictions
        # List of insurances.
        attr_accessor :insurances
        # List of passengers.
        attr_accessor :passengers
        # List of flight segments.
        attr_accessor :segments
        # Electronic ticket indicator.
        attr_accessor :ticket_electronically_issued_indicator
        # Total cost breakdown.
        attr_accessor :total
        # Type of flight transaction.
        attr_accessor :transaction_type

        def initialize(
          affiliate: nil,
          booking_number: nil,
          computerized_reservation_system: nil,
          endorsements_and_restrictions: nil,
          insurances: nil,
          passengers: nil,
          segments: nil,
          ticket_electronically_issued_indicator: nil,
          total: nil,
          transaction_type: nil
        )
          @affiliate = affiliate
          @booking_number = booking_number
          @computerized_reservation_system = computerized_reservation_system
          @endorsements_and_restrictions = endorsements_and_restrictions
          @insurances = insurances
          @passengers = passengers
          @segments = segments
          @ticket_electronically_issued_indicator = ticket_electronically_issued_indicator
          @total = total
          @transaction_type = transaction_type
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

      class LodgingDatum < ::Stripe::RequestParams
        class Accommodation < ::Stripe::RequestParams
          # Type of accommodation.
          attr_accessor :accommodation_type
          # Bed type.
          attr_accessor :bed_type
          # Daily accommodation rate in cents.
          attr_accessor :daily_rate_amount
          # Number of nights.
          attr_accessor :nights
          # Number of rooms, cabanas, apartments, and so on.
          attr_accessor :number_of_rooms
          # Rate type.
          attr_accessor :rate_type
          # Whether smoking is allowed.
          attr_accessor :smoking_indicator

          def initialize(
            accommodation_type: nil,
            bed_type: nil,
            daily_rate_amount: nil,
            nights: nil,
            number_of_rooms: nil,
            rate_type: nil,
            smoking_indicator: nil
          )
            @accommodation_type = accommodation_type
            @bed_type = bed_type
            @daily_rate_amount = daily_rate_amount
            @nights = nights
            @number_of_rooms = number_of_rooms
            @rate_type = rate_type
            @smoking_indicator = smoking_indicator
          end
        end

        class Affiliate < ::Stripe::RequestParams
          # Affiliate partner code.
          attr_accessor :code
          # Affiliate partner name.
          attr_accessor :name

          def initialize(code: nil, name: nil)
            @code = code
            @name = name
          end
        end

        class Guest < ::Stripe::RequestParams
          # Guest's full name.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class Host < ::Stripe::RequestParams
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
          # Address of the host.
          attr_accessor :address
          # Host's country of domicile.
          attr_accessor :country_of_domicile
          # Reference number for the host.
          attr_accessor :host_reference
          # Type of host.
          attr_accessor :host_type
          # Name of the lodging property or host.
          attr_accessor :name
          # Total number of reservations for the host.
          attr_accessor :number_of_reservations
          # Property phone number.
          attr_accessor :property_phone_number
          # Host's registration date.
          attr_accessor :registered_at

          def initialize(
            address: nil,
            country_of_domicile: nil,
            host_reference: nil,
            host_type: nil,
            name: nil,
            number_of_reservations: nil,
            property_phone_number: nil,
            registered_at: nil
          )
            @address = address
            @country_of_domicile = country_of_domicile
            @host_reference = host_reference
            @host_type = host_type
            @name = name
            @number_of_reservations = number_of_reservations
            @property_phone_number = property_phone_number
            @registered_at = registered_at
          end
        end

        class Insurance < ::Stripe::RequestParams
          # Price of the insurance coverage in cents.
          attr_accessor :amount
          # Currency of the insurance amount.
          attr_accessor :currency
          # Name of the insurance company.
          attr_accessor :insurance_company_name
          # Type of insurance coverage.
          attr_accessor :insurance_type

          def initialize(
            amount: nil,
            currency: nil,
            insurance_company_name: nil,
            insurance_type: nil
          )
            @amount = amount
            @currency = currency
            @insurance_company_name = insurance_company_name
            @insurance_type = insurance_type
          end
        end

        class Total < ::Stripe::RequestParams
          class Discounts < ::Stripe::RequestParams
            # Corporate client discount code.
            attr_accessor :corporate_client_code
            # Coupon code.
            attr_accessor :coupon

            def initialize(corporate_client_code: nil, coupon: nil)
              @corporate_client_code = corporate_client_code
              @coupon = coupon
            end
          end

          class ExtraCharge < ::Stripe::RequestParams
            # Amount of the extra charge in cents.
            attr_accessor :amount
            # Type of extra charge.
            attr_accessor :type

            def initialize(amount: nil, type: nil)
              @amount = amount
              @type = type
            end
          end

          class Tax < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Tax amount in cents.
              attr_accessor :amount
              # Tax rate.
              attr_accessor :rate
              # Type of tax applied.
              attr_accessor :type

              def initialize(amount: nil, rate: nil, type: nil)
                @amount = amount
                @rate = rate
                @type = type
              end
            end
            # Indicates whether the transaction is tax exempt.
            attr_accessor :tax_exempt_indicator
            # Tax details.
            attr_accessor :taxes

            def initialize(tax_exempt_indicator: nil, taxes: nil)
              @tax_exempt_indicator = tax_exempt_indicator
              @taxes = taxes
            end
          end
          # Total price of the lodging reservation in cents.
          attr_accessor :amount
          # Cash advances in cents.
          attr_accessor :cash_advances
          # Currency of the total amount.
          attr_accessor :currency
          # Discount details for the lodging.
          attr_accessor :discounts
          # Additional charges for the lodging.
          attr_accessor :extra_charges
          # Prepaid amount in cents.
          attr_accessor :prepaid_amount
          # Tax breakdown for the lodging reservation.
          attr_accessor :tax

          def initialize(
            amount: nil,
            cash_advances: nil,
            currency: nil,
            discounts: nil,
            extra_charges: nil,
            prepaid_amount: nil,
            tax: nil
          )
            @amount = amount
            @cash_advances = cash_advances
            @currency = currency
            @discounts = discounts
            @extra_charges = extra_charges
            @prepaid_amount = prepaid_amount
            @tax = tax
          end
        end
        # Accommodation details for the lodging.
        attr_accessor :accommodation
        # Affiliate details if applicable.
        attr_accessor :affiliate
        # Booking confirmation number for the lodging.
        attr_accessor :booking_number
        # Check-in date.
        attr_accessor :checkin_at
        # Check-out date.
        attr_accessor :checkout_at
        # Customer service phone number for the lodging company.
        attr_accessor :customer_service_phone_number
        # Whether the lodging is compliant with any hotel fire safety regulations.
        attr_accessor :fire_safety_act_compliance_indicator
        # List of guests for the lodging.
        attr_accessor :guests
        # Host details for the lodging.
        attr_accessor :host
        # List of insurances for the lodging.
        attr_accessor :insurances
        # Whether the renter is a no-show.
        attr_accessor :no_show_indicator
        # Renter ID number for the lodging.
        attr_accessor :renter_id_number
        # Renter name for the lodging.
        attr_accessor :renter_name
        # Total details for the lodging.
        attr_accessor :total

        def initialize(
          accommodation: nil,
          affiliate: nil,
          booking_number: nil,
          checkin_at: nil,
          checkout_at: nil,
          customer_service_phone_number: nil,
          fire_safety_act_compliance_indicator: nil,
          guests: nil,
          host: nil,
          insurances: nil,
          no_show_indicator: nil,
          renter_id_number: nil,
          renter_name: nil,
          total: nil
        )
          @accommodation = accommodation
          @affiliate = affiliate
          @booking_number = booking_number
          @checkin_at = checkin_at
          @checkout_at = checkout_at
          @customer_service_phone_number = customer_service_phone_number
          @fire_safety_act_compliance_indicator = fire_safety_act_compliance_indicator
          @guests = guests
          @host = host
          @insurances = insurances
          @no_show_indicator = no_show_indicator
          @renter_id_number = renter_id_number
          @renter_name = renter_name
          @total = total
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
      # Car rental data for this PaymentIntent.
      attr_accessor :car_rental_data
      # A unique value to identify the customer. This field is available only for card payments.
      #
      # This field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
      attr_accessor :customer_reference
      # Event details for this PaymentIntent
      attr_accessor :event_details
      # Flight reservation details for this PaymentIntent
      attr_accessor :flight
      # Flight data for this PaymentIntent.
      attr_accessor :flight_data
      # Lodging reservation details for this PaymentIntent
      attr_accessor :lodging
      # Lodging data for this PaymentIntent.
      attr_accessor :lodging_data
      # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
      #
      # Required when the Payment Method Types array contains `card`, including when [automatic_payment_methods.enabled](/api/payment_intents/create#create_payment_intent-automatic_payment_methods-enabled) is set to `true`.
      #
      # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks. For Klarna, this field is truncated to 255 characters and is visible to customers when they view the order in the Klarna app.
      attr_accessor :order_reference
      # Subscription details for this PaymentIntent
      attr_accessor :subscription

      def initialize(
        car_rental: nil,
        car_rental_data: nil,
        customer_reference: nil,
        event_details: nil,
        flight: nil,
        flight_data: nil,
        lodging: nil,
        lodging_data: nil,
        order_reference: nil,
        subscription: nil
      )
        @car_rental = car_rental
        @car_rental_data = car_rental_data
        @customer_reference = customer_reference
        @event_details = event_details
        @flight = flight
        @flight_data = flight_data
        @lodging = lodging
        @lodging_data = lodging_data
        @order_reference = order_reference
        @subscription = subscription
      end
    end

    class PaymentMethodData < ::Stripe::RequestParams
      class AcssDebit < ::Stripe::RequestParams
        # Customer's bank account number.
        attr_accessor :account_number
        # Institution number of the customer's bank.
        attr_accessor :institution_number
        # Transit number of the customer's bank.
        attr_accessor :transit_number

        def initialize(account_number: nil, institution_number: nil, transit_number: nil)
          @account_number = account_number
          @institution_number = institution_number
          @transit_number = transit_number
        end
      end

      class Affirm < ::Stripe::RequestParams; end
      class AfterpayClearpay < ::Stripe::RequestParams; end
      class Alipay < ::Stripe::RequestParams; end
      class Alma < ::Stripe::RequestParams; end
      class AmazonPay < ::Stripe::RequestParams; end

      class AuBecsDebit < ::Stripe::RequestParams
        # The account number for the bank account.
        attr_accessor :account_number
        # Bank-State-Branch number of the bank account.
        attr_accessor :bsb_number

        def initialize(account_number: nil, bsb_number: nil)
          @account_number = account_number
          @bsb_number = bsb_number
        end
      end

      class BacsDebit < ::Stripe::RequestParams
        # Account number of the bank account that the funds will be debited from.
        attr_accessor :account_number
        # Sort code of the bank account. (e.g., `10-20-30`)
        attr_accessor :sort_code

        def initialize(account_number: nil, sort_code: nil)
          @account_number = account_number
          @sort_code = sort_code
        end
      end

      class Bancontact < ::Stripe::RequestParams; end
      class Billie < ::Stripe::RequestParams; end

      class BillingDetails < ::Stripe::RequestParams
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
        # Billing address.
        attr_accessor :address
        # Email address.
        attr_accessor :email
        # Full name.
        attr_accessor :name
        # Billing phone number (including extension).
        attr_accessor :phone
        # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
        attr_accessor :tax_id

        def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
          @tax_id = tax_id
        end
      end

      class Blik < ::Stripe::RequestParams; end

      class Boleto < ::Stripe::RequestParams
        # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
        attr_accessor :tax_id

        def initialize(tax_id: nil)
          @tax_id = tax_id
        end
      end

      class Cashapp < ::Stripe::RequestParams; end
      class Crypto < ::Stripe::RequestParams; end
      class CustomerBalance < ::Stripe::RequestParams; end

      class Eps < ::Stripe::RequestParams
        # The customer's bank.
        attr_accessor :bank

        def initialize(bank: nil)
          @bank = bank
        end
      end

      class Fpx < ::Stripe::RequestParams
        # Account holder type for FPX transaction
        attr_accessor :account_holder_type
        # The customer's bank.
        attr_accessor :bank

        def initialize(account_holder_type: nil, bank: nil)
          @account_holder_type = account_holder_type
          @bank = bank
        end
      end

      class Giropay < ::Stripe::RequestParams; end
      class Gopay < ::Stripe::RequestParams; end
      class Grabpay < ::Stripe::RequestParams; end

      class IdBankTransfer < ::Stripe::RequestParams
        # Bank where the account is held.
        attr_accessor :bank

        def initialize(bank: nil)
          @bank = bank
        end
      end

      class Ideal < ::Stripe::RequestParams
        # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
        attr_accessor :bank

        def initialize(bank: nil)
          @bank = bank
        end
      end

      class InteracPresent < ::Stripe::RequestParams; end
      class KakaoPay < ::Stripe::RequestParams; end

      class Klarna < ::Stripe::RequestParams
        class Dob < ::Stripe::RequestParams
          # The day of birth, between 1 and 31.
          attr_accessor :day
          # The month of birth, between 1 and 12.
          attr_accessor :month
          # The four-digit year of birth.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end
        # Customer's date of birth
        attr_accessor :dob

        def initialize(dob: nil)
          @dob = dob
        end
      end

      class Konbini < ::Stripe::RequestParams; end
      class KrCard < ::Stripe::RequestParams; end
      class Link < ::Stripe::RequestParams; end
      class MbWay < ::Stripe::RequestParams; end
      class Mobilepay < ::Stripe::RequestParams; end
      class Multibanco < ::Stripe::RequestParams; end

      class NaverPay < ::Stripe::RequestParams
        # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
        attr_accessor :funding

        def initialize(funding: nil)
          @funding = funding
        end
      end

      class NzBankAccount < ::Stripe::RequestParams
        # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
        attr_accessor :account_holder_name
        # The account number for the bank account.
        attr_accessor :account_number
        # The numeric code for the bank account's bank.
        attr_accessor :bank_code
        # The numeric code for the bank account's bank branch.
        attr_accessor :branch_code
        # Attribute for param field reference
        attr_accessor :reference
        # The suffix of the bank account number.
        attr_accessor :suffix

        def initialize(
          account_holder_name: nil,
          account_number: nil,
          bank_code: nil,
          branch_code: nil,
          reference: nil,
          suffix: nil
        )
          @account_holder_name = account_holder_name
          @account_number = account_number
          @bank_code = bank_code
          @branch_code = branch_code
          @reference = reference
          @suffix = suffix
        end
      end

      class Oxxo < ::Stripe::RequestParams; end

      class P24 < ::Stripe::RequestParams
        # The customer's bank.
        attr_accessor :bank

        def initialize(bank: nil)
          @bank = bank
        end
      end

      class PayByBank < ::Stripe::RequestParams; end
      class Payco < ::Stripe::RequestParams; end
      class Paynow < ::Stripe::RequestParams; end
      class Paypal < ::Stripe::RequestParams; end
      class Paypay < ::Stripe::RequestParams; end

      class Payto < ::Stripe::RequestParams
        # The account number for the bank account.
        attr_accessor :account_number
        # Bank-State-Branch number of the bank account.
        attr_accessor :bsb_number
        # The PayID alias for the bank account.
        attr_accessor :pay_id

        def initialize(account_number: nil, bsb_number: nil, pay_id: nil)
          @account_number = account_number
          @bsb_number = bsb_number
          @pay_id = pay_id
        end
      end

      class Pix < ::Stripe::RequestParams; end
      class Promptpay < ::Stripe::RequestParams; end
      class Qris < ::Stripe::RequestParams; end

      class RadarOptions < ::Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        attr_accessor :session

        def initialize(session: nil)
          @session = session
        end
      end

      class Rechnung < ::Stripe::RequestParams
        class Dob < ::Stripe::RequestParams
          # The day of birth, between 1 and 31.
          attr_accessor :day
          # The month of birth, between 1 and 12.
          attr_accessor :month
          # The four-digit year of birth.
          attr_accessor :year

          def initialize(day: nil, month: nil, year: nil)
            @day = day
            @month = month
            @year = year
          end
        end
        # Customer's date of birth
        attr_accessor :dob

        def initialize(dob: nil)
          @dob = dob
        end
      end

      class RevolutPay < ::Stripe::RequestParams; end
      class SamsungPay < ::Stripe::RequestParams; end
      class Satispay < ::Stripe::RequestParams; end

      class SepaDebit < ::Stripe::RequestParams
        # IBAN of the bank account.
        attr_accessor :iban

        def initialize(iban: nil)
          @iban = iban
        end
      end

      class Shopeepay < ::Stripe::RequestParams; end

      class Sofort < ::Stripe::RequestParams
        # Two-letter ISO code representing the country the bank account is located in.
        attr_accessor :country

        def initialize(country: nil)
          @country = country
        end
      end

      class StripeBalance < ::Stripe::RequestParams
        # The connected account ID whose Stripe balance to use as the source of payment
        attr_accessor :account
        # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
        attr_accessor :source_type

        def initialize(account: nil, source_type: nil)
          @account = account
          @source_type = source_type
        end
      end

      class Swish < ::Stripe::RequestParams; end
      class Twint < ::Stripe::RequestParams; end

      class UsBankAccount < ::Stripe::RequestParams
        # Account holder type: individual or company.
        attr_accessor :account_holder_type
        # Account number of the bank account.
        attr_accessor :account_number
        # Account type: checkings or savings. Defaults to checking if omitted.
        attr_accessor :account_type
        # The ID of a Financial Connections Account to use as a payment method.
        attr_accessor :financial_connections_account
        # Routing number of the bank account.
        attr_accessor :routing_number

        def initialize(
          account_holder_type: nil,
          account_number: nil,
          account_type: nil,
          financial_connections_account: nil,
          routing_number: nil
        )
          @account_holder_type = account_holder_type
          @account_number = account_number
          @account_type = account_type
          @financial_connections_account = financial_connections_account
          @routing_number = routing_number
        end
      end

      class WechatPay < ::Stripe::RequestParams; end
      class Zip < ::Stripe::RequestParams; end
      # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
      attr_accessor :acss_debit
      # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
      attr_accessor :affirm
      # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
      attr_accessor :afterpay_clearpay
      # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
      attr_accessor :alipay
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
      attr_accessor :allow_redisplay
      # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
      attr_accessor :alma
      # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
      attr_accessor :amazon_pay
      # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
      attr_accessor :au_becs_debit
      # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
      attr_accessor :bacs_debit
      # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
      attr_accessor :bancontact
      # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
      attr_accessor :billie
      # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
      attr_accessor :billing_details
      # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
      attr_accessor :blik
      # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
      attr_accessor :boleto
      # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
      attr_accessor :cashapp
      # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
      attr_accessor :crypto
      # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
      attr_accessor :customer_balance
      # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
      attr_accessor :eps
      # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
      attr_accessor :fpx
      # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
      attr_accessor :giropay
      # If this is a Gopay PaymentMethod, this hash contains details about the Gopay payment method.
      attr_accessor :gopay
      # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
      attr_accessor :grabpay
      # If this is an `IdBankTransfer` PaymentMethod, this hash contains details about the IdBankTransfer payment method.
      attr_accessor :id_bank_transfer
      # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
      attr_accessor :ideal
      # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
      attr_accessor :interac_present
      # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
      attr_accessor :kakao_pay
      # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
      attr_accessor :klarna
      # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
      attr_accessor :konbini
      # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
      attr_accessor :kr_card
      # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
      attr_accessor :link
      # If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
      attr_accessor :mb_way
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
      attr_accessor :mobilepay
      # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
      attr_accessor :multibanco
      # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
      attr_accessor :naver_pay
      # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
      attr_accessor :nz_bank_account
      # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
      attr_accessor :oxxo
      # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
      attr_accessor :p24
      # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
      attr_accessor :pay_by_bank
      # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
      attr_accessor :payco
      # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
      attr_accessor :paynow
      # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
      attr_accessor :paypal
      # If this is a `paypay` PaymentMethod, this hash contains details about the PayPay payment method.
      attr_accessor :paypay
      # If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
      attr_accessor :payto
      # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
      attr_accessor :pix
      # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
      attr_accessor :promptpay
      # If this is a `qris` PaymentMethod, this hash contains details about the QRIS payment method.
      attr_accessor :qris
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      attr_accessor :radar_options
      # If this is a `rechnung` PaymentMethod, this hash contains details about the Rechnung payment method.
      attr_accessor :rechnung
      # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
      attr_accessor :revolut_pay
      # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
      attr_accessor :samsung_pay
      # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
      attr_accessor :satispay
      # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
      attr_accessor :sepa_debit
      # If this is a Shopeepay PaymentMethod, this hash contains details about the Shopeepay payment method.
      attr_accessor :shopeepay
      # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
      attr_accessor :sofort
      # This hash contains details about the Stripe balance payment method.
      attr_accessor :stripe_balance
      # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
      attr_accessor :swish
      # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
      attr_accessor :twint
      # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
      attr_accessor :type
      # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
      attr_accessor :us_bank_account
      # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
      attr_accessor :wechat_pay
      # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
      attr_accessor :zip

      def initialize(
        acss_debit: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        allow_redisplay: nil,
        alma: nil,
        amazon_pay: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        billing_details: nil,
        blik: nil,
        boleto: nil,
        cashapp: nil,
        crypto: nil,
        customer_balance: nil,
        eps: nil,
        fpx: nil,
        giropay: nil,
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        interac_present: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mb_way: nil,
        metadata: nil,
        mobilepay: nil,
        multibanco: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        paypay: nil,
        payto: nil,
        pix: nil,
        promptpay: nil,
        qris: nil,
        radar_options: nil,
        rechnung: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        shopeepay: nil,
        sofort: nil,
        stripe_balance: nil,
        swish: nil,
        twint: nil,
        type: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      )
        @acss_debit = acss_debit
        @affirm = affirm
        @afterpay_clearpay = afterpay_clearpay
        @alipay = alipay
        @allow_redisplay = allow_redisplay
        @alma = alma
        @amazon_pay = amazon_pay
        @au_becs_debit = au_becs_debit
        @bacs_debit = bacs_debit
        @bancontact = bancontact
        @billie = billie
        @billing_details = billing_details
        @blik = blik
        @boleto = boleto
        @cashapp = cashapp
        @crypto = crypto
        @customer_balance = customer_balance
        @eps = eps
        @fpx = fpx
        @giropay = giropay
        @gopay = gopay
        @grabpay = grabpay
        @id_bank_transfer = id_bank_transfer
        @ideal = ideal
        @interac_present = interac_present
        @kakao_pay = kakao_pay
        @klarna = klarna
        @konbini = konbini
        @kr_card = kr_card
        @link = link
        @mb_way = mb_way
        @metadata = metadata
        @mobilepay = mobilepay
        @multibanco = multibanco
        @naver_pay = naver_pay
        @nz_bank_account = nz_bank_account
        @oxxo = oxxo
        @p24 = p24
        @pay_by_bank = pay_by_bank
        @payco = payco
        @paynow = paynow
        @paypal = paypal
        @paypay = paypay
        @payto = payto
        @pix = pix
        @promptpay = promptpay
        @qris = qris
        @radar_options = radar_options
        @rechnung = rechnung
        @revolut_pay = revolut_pay
        @samsung_pay = samsung_pay
        @satispay = satispay
        @sepa_debit = sepa_debit
        @shopeepay = shopeepay
        @sofort = sofort
        @stripe_balance = stripe_balance
        @swish = swish
        @twint = twint
        @type = type
        @us_bank_account = us_bank_account
        @wechat_pay = wechat_pay
        @zip = zip
      end
    end

    class PaymentMethodOptions < ::Stripe::RequestParams
      class AcssDebit < ::Stripe::RequestParams
        class MandateOptions < ::Stripe::RequestParams
          # A URL for custom mandate text to render during confirmation step.
          # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
          # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
          attr_accessor :custom_mandate_url
          # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
          attr_accessor :interval_description
          # Payment schedule for the mandate.
          attr_accessor :payment_schedule
          # Transaction type of the mandate.
          attr_accessor :transaction_type

          def initialize(
            custom_mandate_url: nil,
            interval_description: nil,
            payment_schedule: nil,
            transaction_type: nil
          )
            @custom_mandate_url = custom_mandate_url
            @interval_description = interval_description
            @payment_schedule = payment_schedule
            @transaction_type = transaction_type
          end
        end
        # Additional fields for Mandate creation
        attr_accessor :mandate_options
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date
        # Bank account verification method.
        attr_accessor :verification_method

        def initialize(
          mandate_options: nil,
          setup_future_usage: nil,
          target_date: nil,
          verification_method: nil
        )
          @mandate_options = mandate_options
          @setup_future_usage = setup_future_usage
          @target_date = target_date
          @verification_method = verification_method
        end
      end

      class Affirm < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Preferred language of the Affirm authorization page that the customer is redirected to.
        attr_accessor :preferred_locale
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, preferred_locale: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @preferred_locale = preferred_locale
          @setup_future_usage = setup_future_usage
        end
      end

      class AfterpayClearpay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # An internal identifier or reference that this payment corresponds to. You must limit the identifier to 128 characters, and it can only contain letters, numbers, underscores, backslashes, and dashes.
        # This field differs from the statement descriptor and item name.
        attr_accessor :reference
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, reference: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @reference = reference
          @setup_future_usage = setup_future_usage
        end
      end

      class Alipay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Alma < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class AmazonPay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class AuBecsDebit < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date

        def initialize(setup_future_usage: nil, target_date: nil)
          @setup_future_usage = setup_future_usage
          @target_date = target_date
        end
      end

      class BacsDebit < ::Stripe::RequestParams
        class MandateOptions < ::Stripe::RequestParams
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
          attr_accessor :reference_prefix

          def initialize(reference_prefix: nil)
            @reference_prefix = reference_prefix
          end
        end
        # Additional fields for Mandate creation
        attr_accessor :mandate_options
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date

        def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil)
          @mandate_options = mandate_options
          @setup_future_usage = setup_future_usage
          @target_date = target_date
        end
      end

      class Bancontact < ::Stripe::RequestParams
        # Preferred language of the Bancontact authorization page that the customer is redirected to.
        attr_accessor :preferred_language
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(preferred_language: nil, setup_future_usage: nil)
          @preferred_language = preferred_language
          @setup_future_usage = setup_future_usage
        end
      end

      class Billie < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class Blik < ::Stripe::RequestParams
        # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
        attr_accessor :code
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(code: nil, setup_future_usage: nil)
          @code = code
          @setup_future_usage = setup_future_usage
        end
      end

      class Boleto < ::Stripe::RequestParams
        # The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto invoice will expire on Wednesday at 23:59 America/Sao_Paulo time.
        attr_accessor :expires_after_days
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(expires_after_days: nil, setup_future_usage: nil)
          @expires_after_days = expires_after_days
          @setup_future_usage = setup_future_usage
        end
      end

      class Card < ::Stripe::RequestParams
        class Installments < ::Stripe::RequestParams
          class Plan < ::Stripe::RequestParams
            # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
            attr_accessor :count
            # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            attr_accessor :interval
            # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
            attr_accessor :type

            def initialize(count: nil, interval: nil, type: nil)
              @count = count
              @interval = interval
              @type = type
            end
          end
          # Setting to true enables installments for this PaymentIntent.
          # This will cause the response to contain a list of available installment plans.
          # Setting to false will prevent any selected plan from applying to a charge.
          attr_accessor :enabled
          # The selected installment plan to use for this payment attempt.
          # This parameter can only be provided during confirmation.
          attr_accessor :plan

          def initialize(enabled: nil, plan: nil)
            @enabled = enabled
            @plan = plan
          end
        end

        class MandateOptions < ::Stripe::RequestParams
          # Amount to be charged for future payments.
          attr_accessor :amount
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          attr_accessor :amount_type
          # A description of the mandate or subscription that is meant to be displayed to the customer.
          attr_accessor :description
          # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          attr_accessor :end_date
          # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
          attr_accessor :interval
          # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
          attr_accessor :interval_count
          # Unique identifier for the mandate or subscription.
          attr_accessor :reference
          # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
          attr_accessor :start_date
          # Specifies the type of mandates supported. Possible values are `india`.
          attr_accessor :supported_types

          def initialize(
            amount: nil,
            amount_type: nil,
            description: nil,
            end_date: nil,
            interval: nil,
            interval_count: nil,
            reference: nil,
            start_date: nil,
            supported_types: nil
          )
            @amount = amount
            @amount_type = amount_type
            @description = description
            @end_date = end_date
            @interval = interval
            @interval_count = interval_count
            @reference = reference
            @start_date = start_date
            @supported_types = supported_types
          end
        end

        class StatementDetails < ::Stripe::RequestParams
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
          # Please pass in an address that is within your Stripe user account country
          attr_accessor :address
          # Phone number (e.g., a toll-free number that customers can call)
          attr_accessor :phone

          def initialize(address: nil, phone: nil)
            @address = address
            @phone = phone
          end
        end

        class ThreeDSecure < ::Stripe::RequestParams
          class NetworkOptions < ::Stripe::RequestParams
            class CartesBancaires < ::Stripe::RequestParams
              # The cryptogram calculation algorithm used by the card Issuer's ACS
              # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
              # messageExtension: CB-AVALGO
              attr_accessor :cb_avalgo
              # The exemption indicator returned from Cartes Bancaires in the ARes.
              # message extension: CB-EXEMPTION; string (4 characters)
              # This is a 3 byte bitmap (low significant byte first and most significant
              # bit first) that has been Base64 encoded
              attr_accessor :cb_exemption
              # The risk score returned from Cartes Bancaires in the ARes.
              # message extension: CB-SCORE; numeric value 0-99
              attr_accessor :cb_score

              def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil)
                @cb_avalgo = cb_avalgo
                @cb_exemption = cb_exemption
                @cb_score = cb_score
              end
            end
            # Cartes Bancaires-specific 3DS fields.
            attr_accessor :cartes_bancaires

            def initialize(cartes_bancaires: nil)
              @cartes_bancaires = cartes_bancaires
            end
          end
          # The `transStatus` returned from the card Issuer’s ACS in the ARes.
          attr_accessor :ares_trans_status
          # The cryptogram, also known as the "authentication value" (AAV, CAVV or
          # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
          # (Most 3D Secure providers will return the base64-encoded version, which
          # is what you should specify here.)
          attr_accessor :cryptogram
          # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
          # provider and indicates what degree of authentication was performed.
          attr_accessor :electronic_commerce_indicator
          # The exemption requested via 3DS and accepted by the issuer at authentication time.
          attr_accessor :exemption_indicator
          # Network specific 3DS fields. Network specific arguments require an
          # explicit card brand choice. The parameter `payment_method_options.card.network``
          # must be populated accordingly
          attr_accessor :network_options
          # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
          # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
          attr_accessor :requestor_challenge_indicator
          # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
          # Transaction ID (dsTransID).
          attr_accessor :transaction_id
          # The version of 3D Secure that was performed.
          attr_accessor :version

          def initialize(
            ares_trans_status: nil,
            cryptogram: nil,
            electronic_commerce_indicator: nil,
            exemption_indicator: nil,
            network_options: nil,
            requestor_challenge_indicator: nil,
            transaction_id: nil,
            version: nil
          )
            @ares_trans_status = ares_trans_status
            @cryptogram = cryptogram
            @electronic_commerce_indicator = electronic_commerce_indicator
            @exemption_indicator = exemption_indicator
            @network_options = network_options
            @requestor_challenge_indicator = requestor_challenge_indicator
            @transaction_id = transaction_id
            @version = version
          end
        end
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # A single-use `cvc_update` Token that represents a card CVC value. When provided, the CVC value will be verified during the card payment attempt. This parameter can only be provided during confirmation.
        attr_accessor :cvc_token
        # Installment configuration for payments attempted on this PaymentIntent.
        #
        # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
        attr_accessor :installments
        # Configuration options for setting up an eMandate for cards issued in India.
        attr_accessor :mandate_options
        # When specified, this parameter indicates that a transaction will be marked
        # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
        # parameter can only be provided during confirmation.
        attr_accessor :moto
        # Selected network to process this PaymentIntent on. Depends on the available networks of the card attached to the PaymentIntent. Can be only set confirm-time.
        attr_accessor :network
        # Request ability to [decrement the authorization](https://stripe.com/docs/payments/decremental-authorization) for this PaymentIntent.
        attr_accessor :request_decremental_authorization
        # Request ability to [capture beyond the standard authorization validity window](https://stripe.com/docs/payments/extended-authorization) for this PaymentIntent.
        attr_accessor :request_extended_authorization
        # Request ability to [increment the authorization](https://stripe.com/docs/payments/incremental-authorization) for this PaymentIntent.
        attr_accessor :request_incremental_authorization
        # Request ability to make [multiple captures](https://stripe.com/docs/payments/multicapture) for this PaymentIntent.
        attr_accessor :request_multicapture
        # Request ability to [overcapture](https://stripe.com/docs/payments/overcapture) for this PaymentIntent.
        attr_accessor :request_overcapture
        # Request partial authorization on this PaymentIntent.
        attr_accessor :request_partial_authorization
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        attr_accessor :request_three_d_secure
        # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
        attr_accessor :require_cvc_recollection
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
        attr_accessor :statement_descriptor_suffix_kana
        # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
        attr_accessor :statement_descriptor_suffix_kanji
        # Statement details for this payment intent. You can use this to override the merchant details shown on your customers' statements.
        attr_accessor :statement_details
        # If 3D Secure authentication was performed with a third-party provider,
        # the authentication details to use for this payment.
        attr_accessor :three_d_secure

        def initialize(
          capture_method: nil,
          cvc_token: nil,
          installments: nil,
          mandate_options: nil,
          moto: nil,
          network: nil,
          request_decremental_authorization: nil,
          request_extended_authorization: nil,
          request_incremental_authorization: nil,
          request_multicapture: nil,
          request_overcapture: nil,
          request_partial_authorization: nil,
          request_three_d_secure: nil,
          require_cvc_recollection: nil,
          setup_future_usage: nil,
          statement_descriptor_suffix_kana: nil,
          statement_descriptor_suffix_kanji: nil,
          statement_details: nil,
          three_d_secure: nil
        )
          @capture_method = capture_method
          @cvc_token = cvc_token
          @installments = installments
          @mandate_options = mandate_options
          @moto = moto
          @network = network
          @request_decremental_authorization = request_decremental_authorization
          @request_extended_authorization = request_extended_authorization
          @request_incremental_authorization = request_incremental_authorization
          @request_multicapture = request_multicapture
          @request_overcapture = request_overcapture
          @request_partial_authorization = request_partial_authorization
          @request_three_d_secure = request_three_d_secure
          @require_cvc_recollection = require_cvc_recollection
          @setup_future_usage = setup_future_usage
          @statement_descriptor_suffix_kana = statement_descriptor_suffix_kana
          @statement_descriptor_suffix_kanji = statement_descriptor_suffix_kanji
          @statement_details = statement_details
          @three_d_secure = three_d_secure
        end
      end

      class CardPresent < ::Stripe::RequestParams
        class Routing < ::Stripe::RequestParams
          # Routing requested priority
          attr_accessor :requested_priority

          def initialize(requested_priority: nil)
            @requested_priority = requested_priority
          end
        end
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
        attr_accessor :request_extended_authorization
        # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
        attr_accessor :request_incremental_authorization_support
        # Network routing priority on co-branded EMV cards supporting domestic debit and international card schemes.
        attr_accessor :routing

        def initialize(
          capture_method: nil,
          request_extended_authorization: nil,
          request_incremental_authorization_support: nil,
          routing: nil
        )
          @capture_method = capture_method
          @request_extended_authorization = request_extended_authorization
          @request_incremental_authorization_support = request_incremental_authorization_support
          @routing = routing
        end
      end

      class Cashapp < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class Crypto < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class CustomerBalance < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          class EuBankTransfer < ::Stripe::RequestParams
            # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
            attr_accessor :country

            def initialize(country: nil)
              @country = country
            end
          end
          # Configuration for the eu_bank_transfer funding type.
          attr_accessor :eu_bank_transfer
          # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
          #
          # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
          attr_accessor :requested_address_types
          # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
          attr_accessor :type

          def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil)
            @eu_bank_transfer = eu_bank_transfer
            @requested_address_types = requested_address_types
            @type = type
          end
        end
        # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
        attr_accessor :bank_transfer
        # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
        attr_accessor :funding_type
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil)
          @bank_transfer = bank_transfer
          @funding_type = funding_type
          @setup_future_usage = setup_future_usage
        end
      end

      class Eps < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Fpx < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Giropay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Gopay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Grabpay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class IdBankTransfer < ::Stripe::RequestParams
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from 5 minutes from now until 31 days from now. If unset, it defaults to 3 days from now.
        attr_accessor :expires_after
        # The UNIX timestamp until which the virtual bank account is valid. Permitted range is from now until 30 days from now. If unset, it defaults to 1 days from now.
        attr_accessor :expires_at
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(expires_after: nil, expires_at: nil, setup_future_usage: nil)
          @expires_after = expires_after
          @expires_at = expires_at
          @setup_future_usage = setup_future_usage
        end
      end

      class Ideal < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class InteracPresent < ::Stripe::RequestParams; end

      class KakaoPay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class Klarna < ::Stripe::RequestParams
        class OnDemand < ::Stripe::RequestParams
          # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
          attr_accessor :average_amount
          # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
          attr_accessor :maximum_amount
          # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
          attr_accessor :minimum_amount
          # Interval at which the customer is making purchases
          attr_accessor :purchase_interval
          # The number of `purchase_interval` between charges
          attr_accessor :purchase_interval_count

          def initialize(
            average_amount: nil,
            maximum_amount: nil,
            minimum_amount: nil,
            purchase_interval: nil,
            purchase_interval_count: nil
          )
            @average_amount = average_amount
            @maximum_amount = maximum_amount
            @minimum_amount = minimum_amount
            @purchase_interval = purchase_interval
            @purchase_interval_count = purchase_interval_count
          end
        end

        class Subscription < ::Stripe::RequestParams
          class NextBilling < ::Stripe::RequestParams
            # The amount of the next charge for the subscription.
            attr_accessor :amount
            # The date of the next charge for the subscription in YYYY-MM-DD format.
            attr_accessor :date

            def initialize(amount: nil, date: nil)
              @amount = amount
              @date = date
            end
          end
          # Unit of time between subscription charges.
          attr_accessor :interval
          # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
          attr_accessor :interval_count
          # Name for subscription.
          attr_accessor :name
          # Describes the upcoming charge for this subscription.
          attr_accessor :next_billing
          # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
          attr_accessor :reference

          def initialize(
            interval: nil,
            interval_count: nil,
            name: nil,
            next_billing: nil,
            reference: nil
          )
            @interval = interval
            @interval_count = interval_count
            @name = name
            @next_billing = next_billing
            @reference = reference
          end
        end

        class SupplementaryPurchaseData < ::Stripe::RequestParams
          class BusReservationDetail < ::Stripe::RequestParams
            class Arrival < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the arrival location.
              attr_accessor :address
              # Identifier name or reference for the arrival location.
              attr_accessor :arrival_location

              def initialize(address: nil, arrival_location: nil)
                @address = address
                @arrival_location = arrival_location
              end
            end

            class Departure < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the departure location.
              attr_accessor :address
              # Timestamp of departure.
              attr_accessor :departs_at
              # Identifier name or reference for the origin location.
              attr_accessor :departure_location

              def initialize(address: nil, departs_at: nil, departure_location: nil)
                @address = address
                @departs_at = departs_at
                @departure_location = departure_location
              end
            end

            class Insurance < ::Stripe::RequestParams
              # Insurance currency.
              attr_accessor :currency
              # Name of the company providing the insurance.
              attr_accessor :insurance_company_name
              # Type of insurance.
              attr_accessor :insurance_type
              # Price of insurance in cents.
              attr_accessor :price

              def initialize(
                currency: nil,
                insurance_company_name: nil,
                insurance_type: nil,
                price: nil
              )
                @currency = currency
                @insurance_company_name = insurance_company_name
                @insurance_type = insurance_type
                @price = price
              end
            end

            class Passenger < ::Stripe::RequestParams
              # The family name of the person.
              attr_accessor :family_name
              # The given name of the person.
              attr_accessor :given_name

              def initialize(family_name: nil, given_name: nil)
                @family_name = family_name
                @given_name = given_name
              end
            end
            # Name of associated or partner company for the service.
            attr_accessor :affiliate_name
            # Arrival details.
            attr_accessor :arrival
            # Name of transportation company.
            attr_accessor :carrier_name
            # Currency.
            attr_accessor :currency
            # Departure details.
            attr_accessor :departure
            # List of insurances for this reservation.
            attr_accessor :insurances
            # List of passengers that this reservation applies to.
            attr_accessor :passengers
            # Price in cents.
            attr_accessor :price
            # Ticket class.
            attr_accessor :ticket_class

            def initialize(
              affiliate_name: nil,
              arrival: nil,
              carrier_name: nil,
              currency: nil,
              departure: nil,
              insurances: nil,
              passengers: nil,
              price: nil,
              ticket_class: nil
            )
              @affiliate_name = affiliate_name
              @arrival = arrival
              @carrier_name = carrier_name
              @currency = currency
              @departure = departure
              @insurances = insurances
              @passengers = passengers
              @price = price
              @ticket_class = ticket_class
            end
          end

          class EventReservationDetail < ::Stripe::RequestParams
            class Address < ::Stripe::RequestParams
              # The city or town.
              attr_accessor :city
              # The country in ISO 3166-1 alpha-2 format.
              attr_accessor :country
              # The postal code formatted according to country.
              attr_accessor :postal_code
              # The state, county, province, or region formatted according to country.
              attr_accessor :region
              # Line 1 of the street address.
              attr_accessor :street_address
              # Line 2 of the street address.
              attr_accessor :street_address2

              def initialize(
                city: nil,
                country: nil,
                postal_code: nil,
                region: nil,
                street_address: nil,
                street_address2: nil
              )
                @city = city
                @country = country
                @postal_code = postal_code
                @region = region
                @street_address = street_address
                @street_address2 = street_address2
              end
            end

            class Insurance < ::Stripe::RequestParams
              # Insurance currency.
              attr_accessor :currency
              # Name of the company providing the insurance.
              attr_accessor :insurance_company_name
              # Type of insurance.
              attr_accessor :insurance_type
              # Price of insurance in cents.
              attr_accessor :price

              def initialize(
                currency: nil,
                insurance_company_name: nil,
                insurance_type: nil,
                price: nil
              )
                @currency = currency
                @insurance_company_name = insurance_company_name
                @insurance_type = insurance_type
                @price = price
              end
            end
            # Indicates if the tickets are digitally checked when entering the venue.
            attr_accessor :access_controlled_venue
            # Address of the event.
            attr_accessor :address
            # Name of associated or partner company for the service.
            attr_accessor :affiliate_name
            # End timestamp of the event.
            attr_accessor :ends_at
            # Company selling the ticket.
            attr_accessor :event_company_name
            # Name of the event.
            attr_accessor :event_name
            # Type of the event.
            attr_accessor :event_type
            # List of insurances for this event.
            attr_accessor :insurances
            # Start timestamp of the event.
            attr_accessor :starts_at
            # Name of the venue where the event takes place.
            attr_accessor :venue_name

            def initialize(
              access_controlled_venue: nil,
              address: nil,
              affiliate_name: nil,
              ends_at: nil,
              event_company_name: nil,
              event_name: nil,
              event_type: nil,
              insurances: nil,
              starts_at: nil,
              venue_name: nil
            )
              @access_controlled_venue = access_controlled_venue
              @address = address
              @affiliate_name = affiliate_name
              @ends_at = ends_at
              @event_company_name = event_company_name
              @event_name = event_name
              @event_type = event_type
              @insurances = insurances
              @starts_at = starts_at
              @venue_name = venue_name
            end
          end

          class FerryReservationDetail < ::Stripe::RequestParams
            class Arrival < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the arrival location.
              attr_accessor :address
              # Identifier name or reference for the arrival location.
              attr_accessor :arrival_location

              def initialize(address: nil, arrival_location: nil)
                @address = address
                @arrival_location = arrival_location
              end
            end

            class Departure < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the departure location.
              attr_accessor :address
              # Timestamp of departure.
              attr_accessor :departs_at
              # Identifier name or reference for the origin location.
              attr_accessor :departure_location

              def initialize(address: nil, departs_at: nil, departure_location: nil)
                @address = address
                @departs_at = departs_at
                @departure_location = departure_location
              end
            end

            class Insurance < ::Stripe::RequestParams
              # Insurance currency.
              attr_accessor :currency
              # Name of the company providing the insurance.
              attr_accessor :insurance_company_name
              # Type of insurance.
              attr_accessor :insurance_type
              # Price of insurance in cents.
              attr_accessor :price

              def initialize(
                currency: nil,
                insurance_company_name: nil,
                insurance_type: nil,
                price: nil
              )
                @currency = currency
                @insurance_company_name = insurance_company_name
                @insurance_type = insurance_type
                @price = price
              end
            end

            class Passenger < ::Stripe::RequestParams
              # The family name of the person.
              attr_accessor :family_name
              # The given name of the person.
              attr_accessor :given_name

              def initialize(family_name: nil, given_name: nil)
                @family_name = family_name
                @given_name = given_name
              end
            end
            # Name of associated or partner company for the service.
            attr_accessor :affiliate_name
            # Arrival details.
            attr_accessor :arrival
            # Name of transportation company.
            attr_accessor :carrier_name
            # Currency.
            attr_accessor :currency
            # Departure details.
            attr_accessor :departure
            # List of insurances for this reservation.
            attr_accessor :insurances
            # List of passengers that this reservation applies to.
            attr_accessor :passengers
            # Price in cents.
            attr_accessor :price
            # Ticket class.
            attr_accessor :ticket_class

            def initialize(
              affiliate_name: nil,
              arrival: nil,
              carrier_name: nil,
              currency: nil,
              departure: nil,
              insurances: nil,
              passengers: nil,
              price: nil,
              ticket_class: nil
            )
              @affiliate_name = affiliate_name
              @arrival = arrival
              @carrier_name = carrier_name
              @currency = currency
              @departure = departure
              @insurances = insurances
              @passengers = passengers
              @price = price
              @ticket_class = ticket_class
            end
          end

          class Insurance < ::Stripe::RequestParams
            # Insurance currency.
            attr_accessor :currency
            # Name of the company providing the insurance.
            attr_accessor :insurance_company_name
            # Type of insurance
            attr_accessor :insurance_type
            # Price of insurance in cents.
            attr_accessor :price

            def initialize(
              currency: nil,
              insurance_company_name: nil,
              insurance_type: nil,
              price: nil
            )
              @currency = currency
              @insurance_company_name = insurance_company_name
              @insurance_type = insurance_type
              @price = price
            end
          end

          class MarketplaceSeller < ::Stripe::RequestParams
            class MarketplaceSellerAddress < ::Stripe::RequestParams
              # The city or town.
              attr_accessor :city
              # The country in ISO 3166-1 alpha-2 format.
              attr_accessor :country
              # The postal code formatted according to country.
              attr_accessor :postal_code
              # The state, county, province, or region formatted according to country.
              attr_accessor :region
              # Line 1 of the street address.
              attr_accessor :street_address
              # Line 2 of the street address.
              attr_accessor :street_address2

              def initialize(
                city: nil,
                country: nil,
                postal_code: nil,
                region: nil,
                street_address: nil,
                street_address2: nil
              )
                @city = city
                @country = country
                @postal_code = postal_code
                @region = region
                @street_address = street_address
                @street_address2 = street_address2
              end
            end
            # The references to line items for purchases with multiple associated sub-sellers.
            attr_accessor :line_item_references
            # The address of the selling or delivering merchant.
            attr_accessor :marketplace_seller_address
            # The name of the marketplace seller.
            attr_accessor :marketplace_seller_name
            # The unique identifier for the marketplace seller.
            attr_accessor :marketplace_seller_reference
            # The number of transactions the sub-seller completed in the last 12 months.
            attr_accessor :number_of_transactions
            # The category of the product.
            attr_accessor :product_category
            # The date when the seller's account with the marketplace was last logged in.
            attr_accessor :seller_last_login_at
            # The current rating of the marketplace seller. If the marketplace uses numeric ranking, map these to the enum values.
            attr_accessor :seller_rating
            # The date when the seller's account with the marketplace was created.
            attr_accessor :seller_registered_at
            # The date when the seller's account with the marketplace was last updated.
            attr_accessor :seller_updated_at
            # The references to shipping addresses for purchases with multiple associated sub-sellers.
            attr_accessor :shipping_references
            # The accumulated amount of sales transactions made by the sub-merchant or sub-seller within the past 12 months in the payment currency. These transactions are in minor currency units.
            attr_accessor :volume_of_transactions

            def initialize(
              line_item_references: nil,
              marketplace_seller_address: nil,
              marketplace_seller_name: nil,
              marketplace_seller_reference: nil,
              number_of_transactions: nil,
              product_category: nil,
              seller_last_login_at: nil,
              seller_rating: nil,
              seller_registered_at: nil,
              seller_updated_at: nil,
              shipping_references: nil,
              volume_of_transactions: nil
            )
              @line_item_references = line_item_references
              @marketplace_seller_address = marketplace_seller_address
              @marketplace_seller_name = marketplace_seller_name
              @marketplace_seller_reference = marketplace_seller_reference
              @number_of_transactions = number_of_transactions
              @product_category = product_category
              @seller_last_login_at = seller_last_login_at
              @seller_rating = seller_rating
              @seller_registered_at = seller_registered_at
              @seller_updated_at = seller_updated_at
              @shipping_references = shipping_references
              @volume_of_transactions = volume_of_transactions
            end
          end

          class RoundTripReservationDetail < ::Stripe::RequestParams
            class Arrival < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the arrival location.
              attr_accessor :address
              # Identifier name or reference for the arrival location.
              attr_accessor :arrival_location

              def initialize(address: nil, arrival_location: nil)
                @address = address
                @arrival_location = arrival_location
              end
            end

            class Departure < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the departure location.
              attr_accessor :address
              # Timestamp of departure.
              attr_accessor :departs_at
              # Identifier name or reference for the origin location.
              attr_accessor :departure_location

              def initialize(address: nil, departs_at: nil, departure_location: nil)
                @address = address
                @departs_at = departs_at
                @departure_location = departure_location
              end
            end

            class Insurance < ::Stripe::RequestParams
              # Insurance currency.
              attr_accessor :currency
              # Name of the company providing the insurance.
              attr_accessor :insurance_company_name
              # Type of insurance.
              attr_accessor :insurance_type
              # Price of insurance in cents.
              attr_accessor :price

              def initialize(
                currency: nil,
                insurance_company_name: nil,
                insurance_type: nil,
                price: nil
              )
                @currency = currency
                @insurance_company_name = insurance_company_name
                @insurance_type = insurance_type
                @price = price
              end
            end

            class Passenger < ::Stripe::RequestParams
              # The family name of the person.
              attr_accessor :family_name
              # The given name of the person.
              attr_accessor :given_name

              def initialize(family_name: nil, given_name: nil)
                @family_name = family_name
                @given_name = given_name
              end
            end
            # Name of associated or partner company for the service.
            attr_accessor :affiliate_name
            # Arrival details.
            attr_accessor :arrival
            # Name of transportation company.
            attr_accessor :carrier_name
            # Currency.
            attr_accessor :currency
            # Departure details.
            attr_accessor :departure
            # List of insurances for this reservation.
            attr_accessor :insurances
            # List of passengers that this reservation applies to.
            attr_accessor :passengers
            # Price in cents.
            attr_accessor :price
            # Ticket class.
            attr_accessor :ticket_class

            def initialize(
              affiliate_name: nil,
              arrival: nil,
              carrier_name: nil,
              currency: nil,
              departure: nil,
              insurances: nil,
              passengers: nil,
              price: nil,
              ticket_class: nil
            )
              @affiliate_name = affiliate_name
              @arrival = arrival
              @carrier_name = carrier_name
              @currency = currency
              @departure = departure
              @insurances = insurances
              @passengers = passengers
              @price = price
              @ticket_class = ticket_class
            end
          end

          class TrainReservationDetail < ::Stripe::RequestParams
            class Arrival < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the arrival location.
              attr_accessor :address
              # Identifier name or reference for the arrival location.
              attr_accessor :arrival_location

              def initialize(address: nil, arrival_location: nil)
                @address = address
                @arrival_location = arrival_location
              end
            end

            class Departure < ::Stripe::RequestParams
              class Address < ::Stripe::RequestParams
                # The city or town.
                attr_accessor :city
                # The country in ISO 3166-1 alpha-2 format.
                attr_accessor :country
                # The postal code formatted according to country.
                attr_accessor :postal_code
                # The state, county, province, or region formatted according to country.
                attr_accessor :region
                # Line 1 of the street address.
                attr_accessor :street_address
                # Line 2 of the street address.
                attr_accessor :street_address2

                def initialize(
                  city: nil,
                  country: nil,
                  postal_code: nil,
                  region: nil,
                  street_address: nil,
                  street_address2: nil
                )
                  @city = city
                  @country = country
                  @postal_code = postal_code
                  @region = region
                  @street_address = street_address
                  @street_address2 = street_address2
                end
              end
              # Address of the departure location.
              attr_accessor :address
              # Timestamp of departure.
              attr_accessor :departs_at
              # Identifier name or reference for the origin location.
              attr_accessor :departure_location

              def initialize(address: nil, departs_at: nil, departure_location: nil)
                @address = address
                @departs_at = departs_at
                @departure_location = departure_location
              end
            end

            class Insurance < ::Stripe::RequestParams
              # Insurance currency.
              attr_accessor :currency
              # Name of the company providing the insurance.
              attr_accessor :insurance_company_name
              # Type of insurance.
              attr_accessor :insurance_type
              # Price of insurance in cents.
              attr_accessor :price

              def initialize(
                currency: nil,
                insurance_company_name: nil,
                insurance_type: nil,
                price: nil
              )
                @currency = currency
                @insurance_company_name = insurance_company_name
                @insurance_type = insurance_type
                @price = price
              end
            end

            class Passenger < ::Stripe::RequestParams
              # The family name of the person.
              attr_accessor :family_name
              # The given name of the person.
              attr_accessor :given_name

              def initialize(family_name: nil, given_name: nil)
                @family_name = family_name
                @given_name = given_name
              end
            end
            # Name of associated or partner company for the service.
            attr_accessor :affiliate_name
            # Arrival details.
            attr_accessor :arrival
            # Name of transportation company.
            attr_accessor :carrier_name
            # Currency.
            attr_accessor :currency
            # Departure details.
            attr_accessor :departure
            # List of insurances for this reservation.
            attr_accessor :insurances
            # List of passengers that this reservation applies to.
            attr_accessor :passengers
            # Price in cents.
            attr_accessor :price
            # Ticket class.
            attr_accessor :ticket_class

            def initialize(
              affiliate_name: nil,
              arrival: nil,
              carrier_name: nil,
              currency: nil,
              departure: nil,
              insurances: nil,
              passengers: nil,
              price: nil,
              ticket_class: nil
            )
              @affiliate_name = affiliate_name
              @arrival = arrival
              @carrier_name = carrier_name
              @currency = currency
              @departure = departure
              @insurances = insurances
              @passengers = passengers
              @price = price
              @ticket_class = ticket_class
            end
          end

          class Voucher < ::Stripe::RequestParams
            # Name of associated or partner company for this voucher.
            attr_accessor :affiliate_name
            # The voucher validity end time.
            attr_accessor :ends_at
            # The voucher validity start time.
            attr_accessor :starts_at
            # The issuer or provider of this voucher.
            attr_accessor :voucher_company
            # The name or reference to identify the voucher.
            attr_accessor :voucher_name
            # The type of this voucher.
            attr_accessor :voucher_type

            def initialize(
              affiliate_name: nil,
              ends_at: nil,
              starts_at: nil,
              voucher_company: nil,
              voucher_name: nil,
              voucher_type: nil
            )
              @affiliate_name = affiliate_name
              @ends_at = ends_at
              @starts_at = starts_at
              @voucher_company = voucher_company
              @voucher_name = voucher_name
              @voucher_type = voucher_type
            end
          end
          # Supplementary bus reservation details.
          attr_accessor :bus_reservation_details
          # Supplementary event reservation details.
          attr_accessor :event_reservation_details
          # Supplementary ferry reservation details.
          attr_accessor :ferry_reservation_details
          # Supplementary insurance details.
          attr_accessor :insurances
          # Supplementary marketplace seller details.
          attr_accessor :marketplace_sellers
          # Supplementary round trip reservation details.
          attr_accessor :round_trip_reservation_details
          # Supplementary train reservation details.
          attr_accessor :train_reservation_details
          # Voucher details, such as a gift card or discount code.
          attr_accessor :vouchers

          def initialize(
            bus_reservation_details: nil,
            event_reservation_details: nil,
            ferry_reservation_details: nil,
            insurances: nil,
            marketplace_sellers: nil,
            round_trip_reservation_details: nil,
            train_reservation_details: nil,
            vouchers: nil
          )
            @bus_reservation_details = bus_reservation_details
            @event_reservation_details = event_reservation_details
            @ferry_reservation_details = ferry_reservation_details
            @insurances = insurances
            @marketplace_sellers = marketplace_sellers
            @round_trip_reservation_details = round_trip_reservation_details
            @train_reservation_details = train_reservation_details
            @vouchers = vouchers
          end
        end
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # On-demand details if setting up or charging an on-demand payment.
        attr_accessor :on_demand
        # Preferred language of the Klarna authorization page that the customer is redirected to
        attr_accessor :preferred_locale
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Subscription details if setting up or charging a subscription.
        attr_accessor :subscriptions
        # Supplementary Purchase Data for the corresponding Klarna payment
        attr_accessor :supplementary_purchase_data

        def initialize(
          capture_method: nil,
          on_demand: nil,
          preferred_locale: nil,
          setup_future_usage: nil,
          subscriptions: nil,
          supplementary_purchase_data: nil
        )
          @capture_method = capture_method
          @on_demand = on_demand
          @preferred_locale = preferred_locale
          @setup_future_usage = setup_future_usage
          @subscriptions = subscriptions
          @supplementary_purchase_data = supplementary_purchase_data
        end
      end

      class Konbini < ::Stripe::RequestParams
        # An optional 10 to 11 digit numeric-only string determining the confirmation code at applicable convenience stores. Must not consist of only zeroes and could be rejected in case of insufficient uniqueness. We recommend to use the customer's phone number.
        attr_accessor :confirmation_number
        # The number of calendar days (between 1 and 60) after which Konbini payment instructions will expire. For example, if a PaymentIntent is confirmed with Konbini and `expires_after_days` set to 2 on Monday JST, the instructions will expire on Wednesday 23:59:59 JST. Defaults to 3 days.
        attr_accessor :expires_after_days
        # The timestamp at which the Konbini payment instructions will expire. Only one of `expires_after_days` or `expires_at` may be set.
        attr_accessor :expires_at
        # A product descriptor of up to 22 characters, which will appear to customers at the convenience store.
        attr_accessor :product_description
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(
          confirmation_number: nil,
          expires_after_days: nil,
          expires_at: nil,
          product_description: nil,
          setup_future_usage: nil
        )
          @confirmation_number = confirmation_number
          @expires_after_days = expires_after_days
          @expires_at = expires_at
          @product_description = product_description
          @setup_future_usage = setup_future_usage
        end
      end

      class KrCard < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class Link < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # [Deprecated] This is a legacy parameter that no longer has any function.
        attr_accessor :persistent_token
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @persistent_token = persistent_token
          @setup_future_usage = setup_future_usage
        end
      end

      class MbWay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Mobilepay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class Multibanco < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class NaverPay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class NzBankAccount < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date

        def initialize(setup_future_usage: nil, target_date: nil)
          @setup_future_usage = setup_future_usage
          @target_date = target_date
        end
      end

      class Oxxo < ::Stripe::RequestParams
        # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
        attr_accessor :expires_after_days
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(expires_after_days: nil, setup_future_usage: nil)
          @expires_after_days = expires_after_days
          @setup_future_usage = setup_future_usage
        end
      end

      class P24 < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Confirm that the payer has accepted the P24 terms and conditions.
        attr_accessor :tos_shown_and_accepted

        def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil)
          @setup_future_usage = setup_future_usage
          @tos_shown_and_accepted = tos_shown_and_accepted
        end
      end

      class PayByBank < ::Stripe::RequestParams; end

      class Payco < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class Paynow < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Paypal < ::Stripe::RequestParams
        class LineItem < ::Stripe::RequestParams
          class Tax < ::Stripe::RequestParams
            # The tax for a single unit of the line item in minor units. Cannot be a negative number.
            attr_accessor :amount
            # The tax behavior for the line item.
            attr_accessor :behavior

            def initialize(amount: nil, behavior: nil)
              @amount = amount
              @behavior = behavior
            end
          end
          # Type of the line item.
          attr_accessor :category
          # Description of the line item.
          attr_accessor :description
          # Descriptive name of the line item.
          attr_accessor :name
          # Quantity of the line item. Must be a positive number.
          attr_accessor :quantity
          # Client facing stock keeping unit, article number or similar.
          attr_accessor :sku
          # The Stripe account ID of the connected account that sells the item.
          attr_accessor :sold_by
          # The tax information for the line item.
          attr_accessor :tax
          # Price for a single unit of the line item in minor units. Cannot be a negative number.
          attr_accessor :unit_amount

          def initialize(
            category: nil,
            description: nil,
            name: nil,
            quantity: nil,
            sku: nil,
            sold_by: nil,
            tax: nil,
            unit_amount: nil
          )
            @category = category
            @description = description
            @name = name
            @quantity = quantity
            @sku = sku
            @sold_by = sold_by
            @tax = tax
            @unit_amount = unit_amount
          end
        end
        # Controls when the funds will be captured from the customer's account.
        attr_accessor :capture_method
        # The line items purchased by the customer.
        attr_accessor :line_items
        # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
        attr_accessor :preferred_locale
        # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
        attr_accessor :reference
        # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
        attr_accessor :reference_id
        # The risk correlation ID for an on-session payment using a saved PayPal payment method.
        attr_accessor :risk_correlation_id
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
        attr_accessor :subsellers

        def initialize(
          capture_method: nil,
          line_items: nil,
          preferred_locale: nil,
          reference: nil,
          reference_id: nil,
          risk_correlation_id: nil,
          setup_future_usage: nil,
          subsellers: nil
        )
          @capture_method = capture_method
          @line_items = line_items
          @preferred_locale = preferred_locale
          @reference = reference
          @reference_id = reference_id
          @risk_correlation_id = risk_correlation_id
          @setup_future_usage = setup_future_usage
          @subsellers = subsellers
        end
      end

      class Paypay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class Payto < ::Stripe::RequestParams
        class MandateOptions < ::Stripe::RequestParams
          # Amount that will be collected. It is required when `amount_type` is `fixed`.
          attr_accessor :amount
          # The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
          attr_accessor :amount_type
          # Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
          attr_accessor :end_date
          # The periodicity at which payments will be collected. Defaults to `adhoc`.
          attr_accessor :payment_schedule
          # The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
          attr_accessor :payments_per_period
          # The purpose for which payments are made. Has a default value based on your merchant category code.
          attr_accessor :purpose

          def initialize(
            amount: nil,
            amount_type: nil,
            end_date: nil,
            payment_schedule: nil,
            payments_per_period: nil,
            purpose: nil
          )
            @amount = amount
            @amount_type = amount_type
            @end_date = end_date
            @payment_schedule = payment_schedule
            @payments_per_period = payments_per_period
            @purpose = purpose
          end
        end
        # Additional fields for Mandate creation. Only `purpose` field is configurable for PayTo PaymentIntent with `setup_future_usage=none`. Other fields are only applicable to PayTo PaymentIntent with `setup_future_usage=off_session`
        attr_accessor :mandate_options
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(mandate_options: nil, setup_future_usage: nil)
          @mandate_options = mandate_options
          @setup_future_usage = setup_future_usage
        end
      end

      class Pix < ::Stripe::RequestParams
        class MandateOptions < ::Stripe::RequestParams
          # Amount to be charged for future payments. Required when `amount_type=fixed`. If not provided for `amount_type=maximum`, defaults to 40000.
          attr_accessor :amount
          # Determines if the amount includes the IOF tax. Defaults to `never`.
          attr_accessor :amount_includes_iof
          # Type of amount. Defaults to `maximum`.
          attr_accessor :amount_type
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Only `brl` is supported currently.
          attr_accessor :currency
          # Date when the mandate expires and no further payments will be charged, in `YYYY-MM-DD`. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          attr_accessor :end_date
          # Schedule at which the future payments will be charged. Defaults to `weekly`.
          attr_accessor :payment_schedule
          # Subscription name displayed to buyers in their bank app. Defaults to the displayable business name.
          attr_accessor :reference
          # Start date of the mandate, in `YYYY-MM-DD`. Start date should be at least 3 days in the future. Defaults to 3 days after the current date.
          attr_accessor :start_date

          def initialize(
            amount: nil,
            amount_includes_iof: nil,
            amount_type: nil,
            currency: nil,
            end_date: nil,
            payment_schedule: nil,
            reference: nil,
            start_date: nil
          )
            @amount = amount
            @amount_includes_iof = amount_includes_iof
            @amount_type = amount_type
            @currency = currency
            @end_date = end_date
            @payment_schedule = payment_schedule
            @reference = reference
            @start_date = start_date
          end
        end
        # Determines if the amount includes the IOF tax. Defaults to `never`.
        attr_accessor :amount_includes_iof
        # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
        attr_accessor :expires_after_seconds
        # The timestamp at which the Pix expires (between 10 and 1209600 seconds in the future). Defaults to 1 day in the future.
        attr_accessor :expires_at
        # Additional fields for mandate creation. Only applicable when `setup_future_usage=off_session`.
        attr_accessor :mandate_options
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(
          amount_includes_iof: nil,
          expires_after_seconds: nil,
          expires_at: nil,
          mandate_options: nil,
          setup_future_usage: nil
        )
          @amount_includes_iof = amount_includes_iof
          @expires_after_seconds = expires_after_seconds
          @expires_at = expires_at
          @mandate_options = mandate_options
          @setup_future_usage = setup_future_usage
        end
      end

      class Promptpay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Qris < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Rechnung < ::Stripe::RequestParams; end

      class RevolutPay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        attr_accessor :setup_future_usage

        def initialize(capture_method: nil, setup_future_usage: nil)
          @capture_method = capture_method
          @setup_future_usage = setup_future_usage
        end
      end

      class SamsungPay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class Satispay < ::Stripe::RequestParams
        # Controls when the funds are captured from the customer's account.
        #
        # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
        #
        # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
        attr_accessor :capture_method

        def initialize(capture_method: nil)
          @capture_method = capture_method
        end
      end

      class SepaDebit < ::Stripe::RequestParams
        class MandateOptions < ::Stripe::RequestParams
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
          attr_accessor :reference_prefix

          def initialize(reference_prefix: nil)
            @reference_prefix = reference_prefix
          end
        end
        # Additional fields for Mandate creation
        attr_accessor :mandate_options
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date

        def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil)
          @mandate_options = mandate_options
          @setup_future_usage = setup_future_usage
          @target_date = target_date
        end
      end

      class Shopeepay < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Sofort < ::Stripe::RequestParams
        # Language shown to the payer on redirect.
        attr_accessor :preferred_language
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(preferred_language: nil, setup_future_usage: nil)
          @preferred_language = preferred_language
          @setup_future_usage = setup_future_usage
        end
      end

      class StripeBalance < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class Swish < ::Stripe::RequestParams
        # A reference for this payment to be displayed in the Swish app.
        attr_accessor :reference
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(reference: nil, setup_future_usage: nil)
          @reference = reference
          @setup_future_usage = setup_future_usage
        end
      end

      class Twint < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end

      class UsBankAccount < ::Stripe::RequestParams
        class FinancialConnections < ::Stripe::RequestParams
          class Filters < ::Stripe::RequestParams
            # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
            attr_accessor :account_subcategories
            # ID of the institution to use to filter for selectable accounts.
            attr_accessor :institution

            def initialize(account_subcategories: nil, institution: nil)
              @account_subcategories = account_subcategories
              @institution = institution
            end
          end

          class ManualEntry < ::Stripe::RequestParams
            # Settings for configuring manual entry of account details.
            attr_accessor :mode

            def initialize(mode: nil)
              @mode = mode
            end
          end
          # Provide filters for the linked accounts that the customer can select for the payment method.
          attr_accessor :filters
          # Customize manual entry behavior
          attr_accessor :manual_entry
          # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
          attr_accessor :permissions
          # List of data features that you would like to retrieve upon account creation.
          attr_accessor :prefetch
          # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
          attr_accessor :return_url

          def initialize(
            filters: nil,
            manual_entry: nil,
            permissions: nil,
            prefetch: nil,
            return_url: nil
          )
            @filters = filters
            @manual_entry = manual_entry
            @permissions = permissions
            @prefetch = prefetch
            @return_url = return_url
          end
        end

        class MandateOptions < ::Stripe::RequestParams
          # The method used to collect offline mandate customer acceptance.
          attr_accessor :collection_method

          def initialize(collection_method: nil)
            @collection_method = collection_method
          end
        end

        class Networks < ::Stripe::RequestParams
          # Triggers validations to run across the selected networks
          attr_accessor :requested

          def initialize(requested: nil)
            @requested = requested
          end
        end
        # Additional fields for Financial Connections Session creation
        attr_accessor :financial_connections
        # Additional fields for Mandate creation
        attr_accessor :mandate_options
        # Additional fields for network related functions
        attr_accessor :networks
        # Preferred transaction settlement speed
        attr_accessor :preferred_settlement_speed
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage
        # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
        attr_accessor :target_date
        # Bank account verification method.
        attr_accessor :verification_method

        def initialize(
          financial_connections: nil,
          mandate_options: nil,
          networks: nil,
          preferred_settlement_speed: nil,
          setup_future_usage: nil,
          target_date: nil,
          verification_method: nil
        )
          @financial_connections = financial_connections
          @mandate_options = mandate_options
          @networks = networks
          @preferred_settlement_speed = preferred_settlement_speed
          @setup_future_usage = setup_future_usage
          @target_date = target_date
          @verification_method = verification_method
        end
      end

      class WechatPay < ::Stripe::RequestParams
        # The app ID registered with WeChat Pay. Only required when client is ios or android.
        attr_accessor :app_id
        # The client type that the end customer will pay from
        attr_accessor :client
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(app_id: nil, client: nil, setup_future_usage: nil)
          @app_id = app_id
          @client = client
          @setup_future_usage = setup_future_usage
        end
      end

      class Zip < ::Stripe::RequestParams
        # Indicates that you intend to make future payments with this PaymentIntent's payment method.
        #
        # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
        #
        # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
        #
        # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
        #
        # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
        attr_accessor :setup_future_usage

        def initialize(setup_future_usage: nil)
          @setup_future_usage = setup_future_usage
        end
      end
      # If this is a `acss_debit` PaymentMethod, this sub-hash contains details about the ACSS Debit payment method options.
      attr_accessor :acss_debit
      # If this is an `affirm` PaymentMethod, this sub-hash contains details about the Affirm payment method options.
      attr_accessor :affirm
      # If this is a `afterpay_clearpay` PaymentMethod, this sub-hash contains details about the Afterpay Clearpay payment method options.
      attr_accessor :afterpay_clearpay
      # If this is a `alipay` PaymentMethod, this sub-hash contains details about the Alipay payment method options.
      attr_accessor :alipay
      # If this is a `alma` PaymentMethod, this sub-hash contains details about the Alma payment method options.
      attr_accessor :alma
      # If this is a `amazon_pay` PaymentMethod, this sub-hash contains details about the Amazon Pay payment method options.
      attr_accessor :amazon_pay
      # If this is a `au_becs_debit` PaymentMethod, this sub-hash contains details about the AU BECS Direct Debit payment method options.
      attr_accessor :au_becs_debit
      # If this is a `bacs_debit` PaymentMethod, this sub-hash contains details about the BACS Debit payment method options.
      attr_accessor :bacs_debit
      # If this is a `bancontact` PaymentMethod, this sub-hash contains details about the Bancontact payment method options.
      attr_accessor :bancontact
      # If this is a `billie` PaymentMethod, this sub-hash contains details about the Billie payment method options.
      attr_accessor :billie
      # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
      attr_accessor :blik
      # If this is a `boleto` PaymentMethod, this sub-hash contains details about the Boleto payment method options.
      attr_accessor :boleto
      # Configuration for any card payments attempted on this PaymentIntent.
      attr_accessor :card
      # If this is a `card_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
      attr_accessor :card_present
      # If this is a `cashapp` PaymentMethod, this sub-hash contains details about the Cash App Pay payment method options.
      attr_accessor :cashapp
      # If this is a `crypto` PaymentMethod, this sub-hash contains details about the Crypto payment method options.
      attr_accessor :crypto
      # If this is a `customer balance` PaymentMethod, this sub-hash contains details about the customer balance payment method options.
      attr_accessor :customer_balance
      # If this is a `eps` PaymentMethod, this sub-hash contains details about the EPS payment method options.
      attr_accessor :eps
      # If this is a `fpx` PaymentMethod, this sub-hash contains details about the FPX payment method options.
      attr_accessor :fpx
      # If this is a `giropay` PaymentMethod, this sub-hash contains details about the Giropay payment method options.
      attr_accessor :giropay
      # If this is a `gopay` PaymentMethod, this sub-hash contains details about the Gopay payment method options.
      attr_accessor :gopay
      # If this is a `grabpay` PaymentMethod, this sub-hash contains details about the Grabpay payment method options.
      attr_accessor :grabpay
      # If this is a `id_bank_transfer` PaymentMethod, this sub-hash contains details about the Indonesia Bank Transfer payment method options.
      attr_accessor :id_bank_transfer
      # If this is a `ideal` PaymentMethod, this sub-hash contains details about the Ideal payment method options.
      attr_accessor :ideal
      # If this is a `interac_present` PaymentMethod, this sub-hash contains details about the Card Present payment method options.
      attr_accessor :interac_present
      # If this is a `kakao_pay` PaymentMethod, this sub-hash contains details about the Kakao Pay payment method options.
      attr_accessor :kakao_pay
      # If this is a `klarna` PaymentMethod, this sub-hash contains details about the Klarna payment method options.
      attr_accessor :klarna
      # If this is a `konbini` PaymentMethod, this sub-hash contains details about the Konbini payment method options.
      attr_accessor :konbini
      # If this is a `kr_card` PaymentMethod, this sub-hash contains details about the KR Card payment method options.
      attr_accessor :kr_card
      # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
      attr_accessor :link
      # If this is a `mb_way` PaymentMethod, this sub-hash contains details about the MB WAY payment method options.
      attr_accessor :mb_way
      # If this is a `MobilePay` PaymentMethod, this sub-hash contains details about the MobilePay payment method options.
      attr_accessor :mobilepay
      # If this is a `multibanco` PaymentMethod, this sub-hash contains details about the Multibanco payment method options.
      attr_accessor :multibanco
      # If this is a `naver_pay` PaymentMethod, this sub-hash contains details about the Naver Pay payment method options.
      attr_accessor :naver_pay
      # If this is a `nz_bank_account` PaymentMethod, this sub-hash contains details about the NZ BECS Direct Debit payment method options.
      attr_accessor :nz_bank_account
      # If this is a `oxxo` PaymentMethod, this sub-hash contains details about the OXXO payment method options.
      attr_accessor :oxxo
      # If this is a `p24` PaymentMethod, this sub-hash contains details about the Przelewy24 payment method options.
      attr_accessor :p24
      # If this is a `pay_by_bank` PaymentMethod, this sub-hash contains details about the PayByBank payment method options.
      attr_accessor :pay_by_bank
      # If this is a `payco` PaymentMethod, this sub-hash contains details about the PAYCO payment method options.
      attr_accessor :payco
      # If this is a `paynow` PaymentMethod, this sub-hash contains details about the PayNow payment method options.
      attr_accessor :paynow
      # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
      attr_accessor :paypal
      # If this is a `paypay` PaymentMethod, this sub-hash contains details about the PayPay payment method options.
      attr_accessor :paypay
      # If this is a `payto` PaymentMethod, this sub-hash contains details about the PayTo payment method options.
      attr_accessor :payto
      # If this is a `pix` PaymentMethod, this sub-hash contains details about the Pix payment method options.
      attr_accessor :pix
      # If this is a `promptpay` PaymentMethod, this sub-hash contains details about the PromptPay payment method options.
      attr_accessor :promptpay
      # If this is a `qris` PaymentMethod, this sub-hash contains details about the QRIS payment method options.
      attr_accessor :qris
      # If this is a `rechnung` PaymentMethod, this sub-hash contains details about the Rechnung payment method options.
      attr_accessor :rechnung
      # If this is a `revolut_pay` PaymentMethod, this sub-hash contains details about the Revolut Pay payment method options.
      attr_accessor :revolut_pay
      # If this is a `samsung_pay` PaymentMethod, this sub-hash contains details about the Samsung Pay payment method options.
      attr_accessor :samsung_pay
      # If this is a `satispay` PaymentMethod, this sub-hash contains details about the Satispay payment method options.
      attr_accessor :satispay
      # If this is a `sepa_debit` PaymentIntent, this sub-hash contains details about the SEPA Debit payment method options.
      attr_accessor :sepa_debit
      # If this is a `shopeepay` PaymentMethod, this sub-hash contains details about the ShopeePay payment method options.
      attr_accessor :shopeepay
      # If this is a `sofort` PaymentMethod, this sub-hash contains details about the SOFORT payment method options.
      attr_accessor :sofort
      # If this is a `stripe_balance` PaymentMethod, this sub-hash contains details about the Stripe Balance payment method options.
      attr_accessor :stripe_balance
      # If this is a `Swish` PaymentMethod, this sub-hash contains details about the Swish payment method options.
      attr_accessor :swish
      # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
      attr_accessor :twint
      # If this is a `us_bank_account` PaymentMethod, this sub-hash contains details about the US bank account payment method options.
      attr_accessor :us_bank_account
      # If this is a `wechat_pay` PaymentMethod, this sub-hash contains details about the WeChat Pay payment method options.
      attr_accessor :wechat_pay
      # If this is a `zip` PaymentMethod, this sub-hash contains details about the Zip payment method options.
      attr_accessor :zip

      def initialize(
        acss_debit: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        alma: nil,
        amazon_pay: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        card_present: nil,
        cashapp: nil,
        crypto: nil,
        customer_balance: nil,
        eps: nil,
        fpx: nil,
        giropay: nil,
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        interac_present: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mb_way: nil,
        mobilepay: nil,
        multibanco: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        paypay: nil,
        payto: nil,
        pix: nil,
        promptpay: nil,
        qris: nil,
        rechnung: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        shopeepay: nil,
        sofort: nil,
        stripe_balance: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      )
        @acss_debit = acss_debit
        @affirm = affirm
        @afterpay_clearpay = afterpay_clearpay
        @alipay = alipay
        @alma = alma
        @amazon_pay = amazon_pay
        @au_becs_debit = au_becs_debit
        @bacs_debit = bacs_debit
        @bancontact = bancontact
        @billie = billie
        @blik = blik
        @boleto = boleto
        @card = card
        @card_present = card_present
        @cashapp = cashapp
        @crypto = crypto
        @customer_balance = customer_balance
        @eps = eps
        @fpx = fpx
        @giropay = giropay
        @gopay = gopay
        @grabpay = grabpay
        @id_bank_transfer = id_bank_transfer
        @ideal = ideal
        @interac_present = interac_present
        @kakao_pay = kakao_pay
        @klarna = klarna
        @konbini = konbini
        @kr_card = kr_card
        @link = link
        @mb_way = mb_way
        @mobilepay = mobilepay
        @multibanco = multibanco
        @naver_pay = naver_pay
        @nz_bank_account = nz_bank_account
        @oxxo = oxxo
        @p24 = p24
        @pay_by_bank = pay_by_bank
        @payco = payco
        @paynow = paynow
        @paypal = paypal
        @paypay = paypay
        @payto = payto
        @pix = pix
        @promptpay = promptpay
        @qris = qris
        @rechnung = rechnung
        @revolut_pay = revolut_pay
        @samsung_pay = samsung_pay
        @satispay = satispay
        @sepa_debit = sepa_debit
        @shopeepay = shopeepay
        @sofort = sofort
        @stripe_balance = stripe_balance
        @swish = swish
        @twint = twint
        @us_bank_account = us_bank_account
        @wechat_pay = wechat_pay
        @zip = zip
      end
    end

    class Shipping < ::Stripe::RequestParams
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

    class TransferData < ::Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      attr_accessor :amount

      def initialize(amount: nil)
        @amount = amount
      end
    end
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_accessor :amount
    # Provides industry-specific information about the amount.
    attr_accessor :amount_details
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :application_fee_amount
    # Controls when the funds will be captured from the customer's account.
    attr_accessor :capture_method
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_accessor :currency
    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    attr_accessor :customer
    # ID of the Account this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Accounts cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Account after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Account instead.
    attr_accessor :customer_account
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_accessor :description
    # The list of payment method types to exclude from use with this payment.
    attr_accessor :excluded_payment_method_types
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The FX rate in the quote is validated and used to convert the presentment amount to the settlement amount.
    attr_accessor :fx_quote
    # Automations to be run during the PaymentIntent lifecycle
    attr_accessor :hooks
    # This hash contains details about the Mandate to create.
    attr_accessor :mandate_data
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Provides industry-specific information about the charge.
    attr_accessor :payment_details
    # Attribute for param field payment_method
    attr_accessor :payment_method
    # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this PaymentIntent.
    attr_accessor :payment_method_configuration
    # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear
    # in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method)
    # property on the PaymentIntent.
    attr_accessor :payment_method_data
    # Payment-method-specific configuration for this PaymentIntent.
    attr_accessor :payment_method_options
    # The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
    attr_accessor :payment_method_types
    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    attr_accessor :receipt_email
    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    #
    # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
    attr_accessor :setup_future_usage
    # Shipping information for this PaymentIntent.
    attr_accessor :shipping
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_accessor :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_accessor :statement_descriptor_suffix
    # Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :transfer_data
    # A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :transfer_group

    def initialize(
      amount: nil,
      amount_details: nil,
      application_fee_amount: nil,
      capture_method: nil,
      currency: nil,
      customer: nil,
      customer_account: nil,
      description: nil,
      excluded_payment_method_types: nil,
      expand: nil,
      fx_quote: nil,
      hooks: nil,
      mandate_data: nil,
      metadata: nil,
      payment_details: nil,
      payment_method: nil,
      payment_method_configuration: nil,
      payment_method_data: nil,
      payment_method_options: nil,
      payment_method_types: nil,
      receipt_email: nil,
      setup_future_usage: nil,
      shipping: nil,
      statement_descriptor: nil,
      statement_descriptor_suffix: nil,
      transfer_data: nil,
      transfer_group: nil
    )
      @amount = amount
      @amount_details = amount_details
      @application_fee_amount = application_fee_amount
      @capture_method = capture_method
      @currency = currency
      @customer = customer
      @customer_account = customer_account
      @description = description
      @excluded_payment_method_types = excluded_payment_method_types
      @expand = expand
      @fx_quote = fx_quote
      @hooks = hooks
      @mandate_data = mandate_data
      @metadata = metadata
      @payment_details = payment_details
      @payment_method = payment_method
      @payment_method_configuration = payment_method_configuration
      @payment_method_data = payment_method_data
      @payment_method_options = payment_method_options
      @payment_method_types = payment_method_types
      @receipt_email = receipt_email
      @setup_future_usage = setup_future_usage
      @shipping = shipping
      @statement_descriptor = statement_descriptor
      @statement_descriptor_suffix = statement_descriptor_suffix
      @transfer_data = transfer_data
      @transfer_group = transfer_group
    end
  end
end
