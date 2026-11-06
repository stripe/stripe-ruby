# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # Corrections to filed tax forms.
    class FormCorrection < APIResource
      OBJECT_NAME = "tax.form_correction"
      def self.object_name
        "tax.form_correction"
      end

      class CorrectionForm < ::Stripe::StripeObject
        # The kind of information changed by this correction.
        attr_reader :correction_type
        # The corrected tax form.
        attr_reader :form

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The tax forms created by the correction.
      attr_reader :correction_forms
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The original tax form that was corrected.
      attr_reader :original_form

      def self.inner_class_types
        @inner_class_types = { correction_forms: CorrectionForm }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
