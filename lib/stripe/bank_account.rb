module Stripe
  class BankAccount < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List
    #include Stripe::APIOperations::Verify

    def url
      #if respond_to?(:recipient)
      #  "#{Recipient.url}/#{CGI.escape(recipient)}/bank_accounts/#{CGI.escape(id)}"
      #elsif respond_to?(:customer)
        "#{Customer.url}/#{CGI.escape(customer)}/bank_accounts/#{CGI.escape(id)}"
      #end
    end

    def verify(params={})
      response, opts = request(:post, verify_url, params)
      refresh_from(response, opts)
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Bank Accounts cannot be retrieved without a customer ID. Retrieve a bank account using customer.bank_accounts.retrieve('bank_account_id')")
    end

    def verify_url
      url + '/verify'
    end
  end
end
