# frozen_string_literal: true

require 'rest-client'
require 'json'
require 'uri'
require 'base64'

module Beez
  class GraphQl
    def self.post(params = {})
      response = RestClient.post(Beez.config.graphql_url, params.to_json, headers.merge(content_headers))
      JSON.parse(response.body)
    end

    def self.headers
      {
        authorization: "Bearer " + Beez::AccessToken.create(audience_url: 'tasklist.camunda.io').access_token
      }
    end

    def self.content_headers
      {
        'Content-Type': 'application/json'
      }
    end
  end
end