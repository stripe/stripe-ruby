# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class FileLink < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "file_link"
  end
end
