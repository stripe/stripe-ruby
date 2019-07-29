# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ApiOperationsTest < Test::Unit::TestCase
    class UpdateableResource < APIResource
      include Stripe::APIOperations::Save

      OBJECT_NAME = "updateableresource"

      def self.protected_fields
        [:protected]
      end
    end

    context ".update" do
      should "post the correct parameters to the resource URL" do
        stub_request(:post, "#{Stripe.api_base}/v1/updateableresources/id")
          .with(body: { foo: "bar" })
          .to_return(body: JSON.generate(foo: "bar"))
        resource = UpdateableResource.update("id", foo: "bar")
        assert_equal("bar", resource.foo)
      end

      should "error on protected fields" do
        e = assert_raises do
          UpdateableResource.update("id", protected: "bar")
        end
        assert_equal "Cannot update protected field: protected", e.message
      end
    end

    context ".nested_resource_class_methods" do
      class MainResource < APIResource
        extend Stripe::APIOperations::NestedResource
        OBJECT_NAME = "mainresource"
        nested_resource_class_methods :nested,
                                      operations: %i[create retrieve update delete list]
      end

      should "define a create method" do
        stub_request(:post, "#{Stripe.api_base}/v1/mainresources/id/nesteds")
          .with(body: { foo: "bar" })
          .to_return(body: JSON.generate(id: "nested_id", object: "nested", foo: "bar"))
        nested_resource = MainResource.create_nested("id", foo: "bar")
        assert_equal "bar", nested_resource.foo
      end

      should "define a retrieve method" do
        stub_request(:get, "#{Stripe.api_base}/v1/mainresources/id/nesteds/nested_id")
          .to_return(body: JSON.generate(id: "nested_id", object: "nested", foo: "bar"))
        nested_resource = MainResource.retrieve_nested("id", "nested_id")
        assert_equal "bar", nested_resource.foo
      end

      should "define an update method" do
        stub_request(:post, "#{Stripe.api_base}/v1/mainresources/id/nesteds/nested_id")
          .with(body: { foo: "baz" })
          .to_return(body: JSON.generate(id: "nested_id", object: "nested", foo: "baz"))
        nested_resource = MainResource.update_nested("id", "nested_id", foo: "baz")
        assert_equal "baz", nested_resource.foo
      end

      should "define a delete method" do
        stub_request(:delete, "#{Stripe.api_base}/v1/mainresources/id/nesteds/nested_id")
          .to_return(body: JSON.generate(id: "nested_id", object: "nested", deleted: true))
        nested_resource = MainResource.delete_nested("id", "nested_id")
        assert_equal true, nested_resource.deleted
      end

      should "define a list method" do
        stub_request(:get, "#{Stripe.api_base}/v1/mainresources/id/nesteds")
          .to_return(body: JSON.generate(object: "list", data: []))
        nested_resources = MainResource.list_nesteds("id")
        assert nested_resources.data.is_a?(Array)
      end
    end
  end
end
