# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class EphemeralKeyTest < Test::Unit::TestCase
    context "#create" do
      should "succeed" do
        key = EwStripe::EphemeralKey.create(
          { customer: "cus_123" },
          stripe_version: "2017-05-25"
        )

        assert_requested(
          :post,
          "#{EwStripe.api_base}/v1/ephemeral_keys",
          headers: { "Stripe-Version" => "2017-05-25" }
        )

        assert key.is_a?(EwStripe::EphemeralKey)
      end

      context "#no global version" do
        should "use the correct api version" do
          key = EwStripe::EphemeralKey.create(
            { customer: "cus_123" },
            stripe_version: "2017-06-05"
          )

          assert_requested(
            :post,
            "#{EwStripe.api_base}/v1/ephemeral_keys",
            headers: { "Stripe-Version" => "2017-06-05" }
          )

          assert key.is_a?(EwStripe::EphemeralKey)
        end

        should "error without an explicit api version" do
          e = assert_raises(ArgumentError) do
            EwStripe::EphemeralKey.create(customer: "cus_123")
          end
          assert_match("stripe_version must be specified", e.message)
        end
      end

      context "#with global version" do
        setup do
          EwStripe.api_version = "2017-05-25"
        end

        teardown do
          EwStripe.api_version = nil
        end

        should "use the correct api version" do
          key = EwStripe::EphemeralKey.create(
            { customer: "cus_123" },
            stripe_version: "2017-05-25"
          )

          assert key.is_a?(EwStripe::EphemeralKey)
        end

        should "error without an explicit api version" do
          e = assert_raises(ArgumentError) do
            EwStripe::EphemeralKey.create(customer: "cus_123")
          end
          assert_match("stripe_version must be specified", e.message)
        end
      end
    end

    context "#delete" do
      should "succeed" do
        key = EwStripe::EphemeralKey.create(
          { customer: "cus_123" },
          stripe_version: "2017-05-25"
        )

        key.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/ephemeral_keys/#{key.id}"
      end
    end

    context ".delete" do
      should "succeed" do
        EwStripe::EphemeralKey.delete("ephkey_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/ephemeral_keys/ephkey_123"
      end
    end
  end
end
