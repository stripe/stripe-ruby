module Stripe
  class Reader    
    def self.parse(reader_string, additional_params = {})
      parsed = reader_string.to_s.split(/(%B)([0-9]{16})(\^)([a-zA-Z ]*)(\/)([a-zA-Z ]*)(\^)([0-9]{2})([0-9]{2})(.)*?$/)

      card = Hash.new
      card[:number] = parsed[2].to_s
      card[:name] = "#{parsed[6]} #{parsed[4]}".upcase
      card[:exp_month] = parsed[9].to_s
      card[:exp_year] = parsed[8].to_s
      card[:cvc] = ""
      card.merge!(additional_params)

      raise Stripe::StripeError.new("Could not parse through the reader") if card.values.join("").strip.length == 0
      card
    end

    def self.read(additional_params = {})
      # print "Scan your credit card using the USB reader: "
      parse(gets, additional_params)
    end
  end
end
