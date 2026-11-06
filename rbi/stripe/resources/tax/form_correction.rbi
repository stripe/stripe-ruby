# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # Corrections to filed tax forms.
    class FormCorrection < APIResource
      class CorrectionForm < ::Stripe::StripeObject
        # The kind of information changed by this correction.
        sig { returns(T.nilable(String)) }
        def correction_type; end
        # The corrected tax form.
        sig { returns(T.nilable(String)) }
        def form; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The tax forms created by the correction.
      sig { returns(T.nilable(T::Array[CorrectionForm])) }
      def correction_forms; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The original tax form that was corrected.
      sig { returns(T.nilable(String)) }
      def original_form; end
    end
  end
end