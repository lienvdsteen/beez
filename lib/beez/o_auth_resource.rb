module Beez
  class OAuthResource < OpenStruct
    def self.create_by_uri(uri:, payload:)
      raw_item = Beez::API.post(uri, payload)
      raw_item = {} if raw_item == ""
      new(raw_item)
    end

    def initialize(raw)
      super(raw)
    end
  end
end