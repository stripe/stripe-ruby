module Stripe
  class Account < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save

    def resource_url
      if self['id']
        super
      else
        "/v1/account"
      end
    end

    # @override To make id optional
    def self.retrieve(id=ARGUMENT_NOT_PROVIDED, opts={})
      id = id.equal?(ARGUMENT_NOT_PROVIDED) ? nil : Util.check_string_argument!(id)

      # Account used to be a singleton, where this method's signature was
      # `(opts={})`. For the sake of not breaking folks who pass in an OAuth
      # key in opts, let's lurkily string match for it.
      if opts == {} && id.is_a?(String) && id.start_with?('sk_')
        # `super` properly assumes a String opts is the apiKey and normalizes as expected.
        opts = id
        id = nil
      end
      super(id, opts)
    end

    def reject(params={}, opts={})
      opts = Util.normalize_opts(opts)
      response, opts = request(:post, resource_url + '/reject', params, opts)
      initialize_from(response, opts)
    end

    # Somewhat unfortunately, we attempt to do a special encoding trick when
    # serializing `additional_owners` under an account: when updating a value,
    # we actually send the update parameters up as an integer-indexed hash
    # rather than an array. So instead of this:
    #
    #     field[]=item1&field[]=item2&field[]=item3
    #
    # We send this:
    #
    #     field[0]=item1&field[1]=item2&field[2]=item3
    #
    # There are two major problems with this technique:
    #
    #     * Entities are addressed by array index, which is not stable and can
    #       easily result in unexpected results between two different requests.
    #
    #     * A replacement of the array's contents is ambiguous with setting a
    #       subset of the array. Because of this, the only way to shorten an
    #       array is to unset it completely by making sure it goes into the
    #       server as an empty string, then setting its contents again.
    #
    # We're trying to get this overturned on the server side, but for now,
    # patch in a special allowance.
    def serialize_params(options = {})
      serialize_params_account(self, super)
    end

    def serialize_params_account(obj, update_hash)
      if entity = @values[:legal_entity]
        if owners = entity[:additional_owners]
          entity_update = update_hash[:legal_entity] ||= {}
          entity_update[:additional_owners] =
            serialize_additional_owners(entity, owners)
        end
      end
      update_hash
    end

    def protected_fields
      [:legal_entity]
    end

    def legal_entity
      self['legal_entity']
    end

    def legal_entity=(_)
      raise NoMethodError.new('Overridding legal_entity can cause serious issues. Instead, set the individual fields of legal_entity like blah.legal_entity.first_name = \'Blah\'')
    end

    def deauthorize(client_id, opts={})
      opts = {:api_base => Stripe.connect_base}.merge(Util.normalize_opts(opts))
      response, opts = request(:post, '/oauth/deauthorize', { 'client_id' => client_id, 'stripe_user_id' => self.id }, opts)
      opts.delete(:api_base) # the api_base here is a one-off, don't persist it
      Util.convert_to_stripe_object(response, opts)
    end

    ARGUMENT_NOT_PROVIDED = Object.new

    private

    def serialize_additional_owners(legal_entity, additional_owners)
      original_value = legal_entity.instance_variable_get(:@original_values)[:additional_owners]
      if original_value && original_value.length > additional_owners.length
        # url params provide no mechanism for deleting an item in an array,
        # just overwriting the whole array or adding new items. So let's not
        # allow deleting without a full overwrite until we have a solution.
        raise ArgumentError.new(
          "You cannot delete an item from an array, you must instead set a new array"
        )
      end

      update_hash = {}
      additional_owners.each_with_index do |v, i|
        # We will almost always see a StripeObject except in the case of a Hash
        # that's been appended to an array of `additional_owners`. We may be
        # able to normalize that ugliness by using an array proxy object with
        # StripeObjects that can detect appends and replace a hash with a
        # StripeObject.
        update = v.is_a?(StripeObject) ? v.serialize_params : v

        if update != {} && (!original_value ||
          update != legal_entity.serialize_params_value(original_value[i], nil, false, true))
            update_hash[i.to_s] = update
        end
      end
      update_hash
    end
  end
end
