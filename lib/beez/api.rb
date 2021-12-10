# frozen_string_literal: true

require 'rest-client'
require 'json'
require 'uri'
require 'base64'

module Beez
  class API
    def self.post(url, params = {})
      response = RestClient.post(url, params.to_json, headers.merge(content_headers))
      JSON.parse(response.body)
    end

    def self.headers
      {
        authorization: "Basic " + Base64.strict_encode64("#{Beez.config.client_id}:#{Beez.config.client_secret}"),
      }
    end

    def self.content_headers
      {
        'Content-Type': 'application/json'
      }
    end
  end
end