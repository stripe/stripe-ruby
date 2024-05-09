# frozen_string_literal: true

module Stripe
  module APIOperations
    # Adds methods to help manipulate a subresource from its parent resource so
    # that it's possible to do so from a static context (i.e. without a
    # pre-existing collection of subresources on the parent).
    #
    # For example, a transfer gains the static methods for reversals so that the
    # methods `.create_reversal`, `.retrieve_reversal`, `.update_reversal`,
    # etc. all become available.
    module NestedResource
      def nested_resource_class_methods(resource, path: nil, operations: nil,
                                        resource_plural: nil)
        resource_plural ||= "#{resource}s"
        path ||= resource_plural

        raise ArgumentError, "operations array required" if operations.nil?

        resource_url_method = :"#{resource}s_url"

        define_singleton_method(resource_url_method) do |id, nested_id = nil|
          url = "#{resource_url}/#{CGI.escape(id)}/#{CGI.escape(path)}"
          url += "/#{CGI.escape(nested_id)}" unless nested_id.nil?
          url
        end

        operations.each do |operation|
          define_operation(
            resource,
            operation,
            resource_url_method,
            resource_plural
          )
        end
      end

      # rubocop:disable Metrics/MethodLength
      private def define_operation(
        resource,
        operation,
        resource_url_method,
        resource_plural
      )
        case operation
        when :create
          define_singleton_method(:"create_#{resource}") \
              do |id, params = {}, opts = {}|
            request_stripe_object(
              method: :post,
              path: send(resource_url_method, id),
              params: params,
              opts: opts
            )
          end
        when :retrieve
          # TODO: (Major) Split params_or_opts to params and opts and get rid of the complicated way to add params
          define_singleton_method(:"retrieve_#{resource}") \
              do |id, nested_id, params_or_opts = {}, definitely_opts = nil|
            opts = nil
            params = nil
            if definitely_opts.nil?
              unrecognized_key = params_or_opts.keys.find { |k| !Util::OPTS_USER_SPECIFIED.include?(k) }
              if unrecognized_key
                raise ArgumentError,
                      "Unrecognized request option: #{unrecognized_key}. Did you mean to specify this as " \
                      "retrieve params? " \
                      "If so, you must explicitly pass an opts hash as a fourth argument. " \
                      "For example: .retrieve(#{id}, #{nested_id}, {#{unrecognized_key}: 'foo'}, {})"
              end

              opts = params_or_opts
            else
              opts = definitely_opts
              params = params_or_opts
            end
            request_stripe_object(
              method: :get,
              path: send(resource_url_method, id, nested_id),
              params: params,
              opts: opts
            )
          end
        when :update
          define_singleton_method(:"update_#{resource}") \
              do |id, nested_id, params = {}, opts = {}|
            request_stripe_object(
              method: :post,
              path: send(resource_url_method, id, nested_id),
              params: params,
              opts: opts
            )
          end
        when :delete
          define_singleton_method(:"delete_#{resource}") \
              do |id, nested_id, params = {}, opts = {}|
            request_stripe_object(
              method: :delete,
              path: send(resource_url_method, id, nested_id),
              params: params,
              opts: opts
            )
          end
        when :list
          define_singleton_method(:"list_#{resource_plural}") \
              do |id, params = {}, opts = {}|
            request_stripe_object(
              method: :get,
              path: send(resource_url_method, id),
              params: params,
              opts: opts
            )
          end
        else
          raise ArgumentError, "Unknown operation: #{operation.inspect}"
        end
      end
      # rubocop:enable Metrics/MethodLength
    end
  end
end
