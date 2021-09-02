# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class RecipientTest < Test::Unit::TestCase
    should "be listable" do
      recipients = EwStripe::Recipient.list
      assert_requested :get, "#{EwStripe.api_base}/v1/recipients"
      assert recipients.data.is_a?(Array)
      assert recipients.data[0].is_a?(EwStripe::Recipient)
    end

    should "be retrievable" do
      recipient = EwStripe::Recipient.retrieve("rp_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/recipients/rp_123"
      assert recipient.is_a?(EwStripe::Recipient)
    end

    should "be creatable" do
      recipient = EwStripe::Recipient.create(
        name: "Noah Jackson",
        type: "individual"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/recipients"
      assert recipient.is_a?(EwStripe::Recipient)
    end

    should "be saveable" do
      recipient = EwStripe::Recipient.retrieve("rp_123")
      recipient.metadata["key"] = "value"
      recipient.save
      assert_requested :post, "#{EwStripe.api_base}/v1/recipients/#{recipient.id}"
    end

    should "be updateable" do
      recipient = EwStripe::Recipient.update("rp_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/recipients/rp_123"
      assert recipient.is_a?(EwStripe::Recipient)
    end

    should "be deletable" do
    end

    context "#delete" do
      should "be deletable" do
        recipient = EwStripe::Recipient.retrieve("rp_123")
        recipient = recipient.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/recipients/#{recipient.id}"
        assert recipient.is_a?(EwStripe::Recipient)
      end
    end

    context ".delete" do
      should "be deletable" do
        recipient = EwStripe::Recipient.delete("rp_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/recipients/rp_123"
        assert recipient.is_a?(EwStripe::Recipient)
      end
    end
  end
end
