# frozen_string_literal: true

module Stripe
  # Define instance methods on the including class (i.e. StripeClient)
  # to access API resources.
  module ClientAPIOperations
    # Proxy object to inject the client into API resources. When included,
    # all resources are defined as singleton methods on the client in the
    # plural form (e.g. Stripe::Account => client.accounts).
    class ClientProxy
      def initialize(client:, resource: nil)
        @client = client
        @resource = resource
      end

      attr_reader :client

      def with_client(client)
        @client = client
        self
      end

      # Used to either send a method to the API resource or the nested
      # ClientProxy when a resource is namespaced.
      def method_missing(method, *args)
        super unless @resource.respond_to?(method)

        update_args_with_client!(method, args)

        @resource.public_send(method, *args)
      end

      def respond_to_missing?(symbol, include_private = false)
        super unless @resource
        @resource.respond_to?(symbol) || super
      end

      # Since the method signature differs when operating on a collection versus
      # a singular resource, it's required to perform introspection on the
      # parameters to respect any passed in options or overrides.
      #
      # Two noteworthy caveats:
      # 1) Does not merge into methods that use `_opts` as that means
      #    the param is unused.
      # 2) Preserves incorrect options (e.g. passing nil) so that APIResource
      #    can handle errors.
      def update_args_with_client!(method, args)
        opts_pos = @resource.method(method).parameters.index(%i[opt opts])

        return unless opts_pos

        opts = opts_pos >= args.length ? {} : args[opts_pos]

        normalized_opts = Stripe::Util.normalize_opts(opts)
        args[opts_pos] = { client: @client }.merge(normalized_opts)
      end
    end

    def self.included(base)
      base.class_eval do
        # Sigma, unlike other namespaced API objects, is not separated by a
        # period so we modify the object name to follow the expected convention.
        api_resources = Stripe::Util.api_object_classes
        sigma_class = api_resources.delete("scheduled_query_run")
        api_resources["sigma.scheduled_query_run"] = sigma_class

        # Update `invoiceitems` to match snake case convention
        invoice_item_class = api_resources.delete("invoiceitem")
        api_resources["invoice_item"] = invoice_item_class

        # Group namespaces that have mutiple resourses
        grouped_resources = api_resources.group_by do |key, _|
          key.include?(".") ? key.split(".").first : key
        end

        grouped_resources.each do |resource_namespace, resources|
          # Namespace resource names are separated with a period by convention.
          if resources[0][0].include?(".")

            # Defines the methods required for chaining calls for resources that
            # are namespaced. A proxy object is created so that all resource
            # methods can be defined at once.
            #
            # NOTE: At some point, a smarter pluralization scheme may be
            # necessary for resource names with complex pluralization rules.
            proxy = ClientProxy.new(client: nil)
            resources.each do |resource_name, resource_class|
              method_name = resource_name.split(".").last
              proxy.define_singleton_method("#{method_name}s") do
                ClientProxy.new(client: proxy.client, resource: resource_class)
              end
            end

            # Defines the first method for resources that are namespaced. By
            # convention these methods are singular. A proxy object is returned
            # so that the client can be injected along the method chain.
            define_method(resource_namespace) do
              proxy.with_client(self)
            end
          else
            # Defines plural methods for non-namespaced resources
            define_method("#{resource_namespace}s".to_sym) do
              ClientProxy.new(client: self, resource: resources[0][1])
            end
          end
        end
      end
    end
  end
end
