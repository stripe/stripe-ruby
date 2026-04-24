# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ProductUpdateParams < ::Stripe::RequestParams
    class Identifiers < ::Stripe::RequestParams
      # European Article Number (EAN) consisting of 8 or 13 digits and optional dashes. You may optionally provide a leading 0 for a total of 14 digits. The final digit is a validated check digit.
      attr_accessor :ean
      # Global Trade Item Number (GTIN) consisting of 8, 12, 13, or 14 digits and optional dashes. The final digit is a validated check digit.
      attr_accessor :gtin
      # International Standard Book Number (ISBN) consisting of 10 or 13 digits and optional dashes. The final digit is a validated check digit. For ISBN-10, the final digit may be a `X`.
      attr_accessor :isbn
      # Japanese Article Number (JAN) consisting of 13 digits and optional dashes. The first two digits must either be `45` or `49`. The final digit is a validated check digit.
      attr_accessor :jan
      # Manufacturer Part Number (MPN). May include up to 70 alphanumeric characters and dashes.
      attr_accessor :mpn
      # National Stock Number (NSN) consisting of 13 digits and optional dashes. The seventh character may also be alphanumeric.
      attr_accessor :nsn
      # Universal Product Code (UPC) consisting of 12 digits and optional dashes. The final digit is a validated check digit.
      attr_accessor :upc

      def initialize(ean: nil, gtin: nil, isbn: nil, jan: nil, mpn: nil, nsn: nil, upc: nil)
        @ean = ean
        @gtin = gtin
        @isbn = isbn
        @jan = jan
        @mpn = mpn
        @nsn = nsn
        @upc = upc
      end
    end

    class MarketingFeature < ::Stripe::RequestParams
      # The marketing feature name. Up to 80 characters long.
      attr_accessor :name

      def initialize(name: nil)
        @name = name
      end
    end

    class PackageDimensions < ::Stripe::RequestParams
      # Height, in inches. Maximum precision is 2 decimal places.
      attr_accessor :height
      # Length, in inches. Maximum precision is 2 decimal places.
      attr_accessor :length
      # Weight, in ounces. Maximum precision is 2 decimal places.
      attr_accessor :weight
      # Width, in inches. Maximum precision is 2 decimal places.
      attr_accessor :width

      def initialize(height: nil, length: nil, weight: nil, width: nil)
        @height = height
        @length = length
        @weight = weight
        @width = width
      end
    end

    class TaxDetails < ::Stripe::RequestParams
      # A tax location ID. Depending on the [tax code](/tax/tax-for-tickets/reference/tax-location-performance), this is required, optional, or not supported.
      attr_accessor :performance_location
      # A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
      attr_accessor :tax_code

      def initialize(performance_location: nil, tax_code: nil)
        @performance_location = performance_location
        @tax_code = tax_code
      end
    end
    # Whether the product is available for purchase.
    attr_accessor :active
    # The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
    attr_accessor :default_price
    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    attr_accessor :description
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Other identifiers for this product.
    attr_accessor :identifiers
    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    attr_accessor :images
    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
    attr_accessor :marketing_features
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The product's name, meant to be displayable to the customer.
    attr_accessor :name
    # The dimensions of this product for shipping purposes.
    attr_accessor :package_dimensions
    # Whether this product is shipped (i.e., physical goods).
    attr_accessor :shippable
    # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
    #
    # This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
    #  It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
    attr_accessor :statement_descriptor
    # A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
    attr_accessor :tax_code
    # Tax details for this product, including the [tax code](/tax/tax-codes) and an optional performance location.
    attr_accessor :tax_details
    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
    attr_accessor :unit_label
    # A URL of a publicly-accessible webpage for this product.
    attr_accessor :url

    def initialize(
      active: nil,
      default_price: nil,
      description: nil,
      expand: nil,
      identifiers: nil,
      images: nil,
      marketing_features: nil,
      metadata: nil,
      name: nil,
      package_dimensions: nil,
      shippable: nil,
      statement_descriptor: nil,
      tax_code: nil,
      tax_details: nil,
      unit_label: nil,
      url: nil
    )
      @active = active
      @default_price = default_price
      @description = description
      @expand = expand
      @identifiers = identifiers
      @images = images
      @marketing_features = marketing_features
      @metadata = metadata
      @name = name
      @package_dimensions = package_dimensions
      @shippable = shippable
      @statement_descriptor = statement_descriptor
      @tax_code = tax_code
      @tax_details = tax_details
      @unit_label = unit_label
      @url = url
    end
  end
end
