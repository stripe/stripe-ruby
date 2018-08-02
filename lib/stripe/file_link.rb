# frozen_string_literal: true

module Stripe
  class FileLink < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    OBJECT_NAME = "file_link".freeze
  end
end
