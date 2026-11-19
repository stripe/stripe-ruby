# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentCaptureParams < ::Stripe::RequestParams
    class AmountDetails < ::Stripe::RequestParams
      class LineItem < ::Stripe::RequestParams
        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, and so on.
            attr_accessor :commodity_code

            def initialize(commodity_code: nil)
              @commodity_code = commodity_code
            end
          end

          class CardPresent < ::Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, and so on.
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
          # This sub-hash contains line item details that are specific to the `card` payment method.
          attr_accessor :card
          # This sub-hash contains line item details that are specific to the `card_present` payment method.
          attr_accessor :card_present
          # This sub-hash contains line item details that are specific to the `klarna` payment method.
          attr_accessor :klarna
          # This sub-hash contains line item details that are specific to the `paypal` payment method.
          attr_accessor :paypal

          def initialize(card: nil, card_present: nil, klarna: nil, paypal: nil)
            @card = card
            @card_present = card_present
            @klarna = klarna
            @paypal = paypal
          end
        end

        class Tax < ::Stripe::RequestParams
          # The total amount of tax on a single line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
          #
          # This field is mutually exclusive with the `amount_details[tax][total_tax_amount]` field.
          attr_accessor :total_tax_amount

          def initialize(total_tax_amount: nil)
            @total_tax_amount = total_tax_amount
          end
        end
        # The discount applied on this line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.
        #
        # This field is mutually exclusive with the `amount_details[discount_amount]` field.
        attr_accessor :discount_amount
        # Payment method-specific information for line items.
        attr_accessor :payment_method_options
        # The product code of the line item, such as an SKU. Required for L3 rates. At most 12 characters long.
        attr_accessor :product_code
        # The product name of the line item. Required for L3 rates. At most 1024 characters long.
        #
        # For Cards, this field is truncated to 26 alphanumeric characters before being sent to the card networks. For PayPal, this field is truncated to 127 characters.
        attr_accessor :product_name
        # The quantity of items. Required for L3 rates. An integer greater than 0.
        attr_accessor :quantity
        # Contains information about the tax on the item.
        attr_accessor :tax
        # The unit cost of the line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
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
        # If a physical good is being shipped, the cost of shipping represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than or equal to 0.
        attr_accessor :amount
        # If a physical good is being shipped, the postal code of where it is being shipped from. At most 10 alphanumeric characters long, hyphens and spaces are allowed.
        attr_accessor :from_postal_code
        # If a physical good is being shipped, the postal code of where it is being shipped to. At most 10 alphanumeric characters long, hyphens and spaces are allowed.
        attr_accessor :to_postal_code

        def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil)
          @amount = amount
          @from_postal_code = from_postal_code
          @to_postal_code = to_postal_code
        end
      end

      class Tax < ::Stripe::RequestParams
        # The total amount of tax on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L2 rates. An integer greater than or equal to 0.
        #
        # This field is mutually exclusive with the `amount_details[line_items][#][tax][total_tax_amount]` field.
        attr_accessor :total_tax_amount

        def initialize(total_tax_amount: nil)
          @total_tax_amount = total_tax_amount
        end
      end
      # The total discount applied on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.
      #
      # This field is mutually exclusive with the `amount_details[line_items][#][discount_amount]` field.
      attr_accessor :discount_amount
      # Set to `false` to return arithmetic validation errors in the response without failing the request. Use this when you want the operation to proceed regardless of arithmetic errors in the line item data.
      #
      # Omit or set to `true` to immediately return a 400 error when arithmetic validation fails. Use this for strict validation that prevents processing with line item data that has arithmetic inconsistencies.
      #
      # For card payments, Stripe doesn't send line item data to card networks if there's an arithmetic validation error.
      attr_accessor :enforce_arithmetic_validation
      # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 200 line items.
      attr_accessor :line_items
      # Contains information about the shipping portion of the amount.
      attr_accessor :shipping
      # Contains information about the tax portion of the amount.
      attr_accessor :tax

      def initialize(
        discount_amount: nil,
        enforce_arithmetic_validation: nil,
        line_items: nil,
        shipping: nil,
        tax: nil
      )
        @discount_amount = discount_amount
        @enforce_arithmetic_validation = enforce_arithmetic_validation
        @line_items = line_items
        @shipping = shipping
        @tax = tax
      end
    end

    class Hooks < ::Stripe::RequestParams
      class Inputs < ::Stripe::RequestParams
        class Tax < ::Stripe::RequestParams
          # The [TaxCalculation](https://docs.stripe.com/api/tax/calculations) id
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
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
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
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
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
            class TaxItem < ::Stripe::RequestParams
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
            attr_accessor :tax_items

            def initialize(tax_exempt_indicator: nil, tax_items: nil)
              @tax_exempt_indicator = tax_exempt_indicator
              @tax_items = tax_items
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
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
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
            class TaxItem < ::Stripe::RequestParams
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
            attr_accessor :tax_items

            def initialize(tax_exempt_indicator: nil, tax_items: nil)
              @tax_exempt_indicator = tax_exempt_indicator
              @tax_items = tax_items
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
      # Car rental data for this PaymentIntent.
      attr_accessor :car_rental_data
      # A unique value to identify the customer. This field is available only for card payments.
      #
      # This field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
      attr_accessor :customer_reference
      # Lodging data for this PaymentIntent.
      attr_accessor :lodging_data
      # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
      #
      # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks. For Klarna, this field is truncated to 255 characters and is visible to customers when they view the order in the Klarna app.
      attr_accessor :order_reference

      def initialize(
        car_rental_data: nil,
        customer_reference: nil,
        lodging_data: nil,
        order_reference: nil
      )
        @car_rental_data = car_rental_data
        @customer_reference = customer_reference
        @lodging_data = lodging_data
        @order_reference = order_reference
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
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
    attr_accessor :application_fee_amount
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://docs.stripe.com/payments/multicapture) is available for PaymentIntents.
    attr_accessor :final_capture
    # Automations to be run during the PaymentIntent lifecycle
    attr_accessor :hooks
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
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
    # is captured. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
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
