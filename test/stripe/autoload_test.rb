# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class AutoloadTest < Test::Unit::TestCase
    context "autoloaded constants" do
      should "resolve all v1 object type classes" do
        Stripe::ObjectTypes.object_names_to_classes.each do |name, klass|
          assert_kind_of Class, klass, "#{name} did not resolve to a class"
        end
      end

      should "resolve all v2 object type classes" do
        Stripe::ObjectTypes.v2_object_names_to_classes.each do |name, klass|
          assert_kind_of Class, klass, "#{name} did not resolve to a class"
        end
      end

      should "resolve all v2 event type classes" do
        Stripe::EventTypes.v2_event_types_to_classes.each do |type, klass|
          assert_kind_of Class, klass, "#{type} did not resolve to a class"
        end
      end

      should "resolve all event notification type classes" do
        Stripe::EventTypes.event_notification_types_to_classes.each do |type, klass|
          assert_kind_of Class, klass, "#{type} did not resolve to a class"
        end
      end

      should "register autoloads for EventNotification constants" do
        # Each event file defines both *Event and *EventNotification.
        # Verify the *EventNotification autoloads are registered so that
        # EventTypes.event_notification_types_to_classes can resolve them.
        assert_not_nil Stripe::Events.autoload?(:V2CoreAccountClosedEventNotification),
          "V2CoreAccountClosedEventNotification should have an autoload registered"
      end
    end

    context ".eager_load!" do
      should "load all registered files without error" do
        assert_nothing_raised { Stripe.eager_load! }
      end

      should "make all resource constants available" do
        Stripe.eager_load!

        # Spot-check a sample of resources across namespaces
        assert_equal "customer", Stripe::Customer::OBJECT_NAME
        assert_equal "billing.alert", Stripe::Billing::Alert::OBJECT_NAME
        assert_equal "checkout.session", Stripe::Checkout::Session::OBJECT_NAME
        assert_equal "issuing.card", Stripe::Issuing::Card::OBJECT_NAME
        assert_equal "treasury.financial_account", Stripe::Treasury::FinancialAccount::OBJECT_NAME
      end
    end
  end
end
