# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ChargeUpdateParams < ::Stripe::RequestParams
    class FraudDetails < ::Stripe::RequestParams
      # Either `safe` or `fraudulent`.
      attr_accessor :user_report

      def initialize(user_report: nil)
        @user_report = user_report
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
end
