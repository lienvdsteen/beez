module Beez
  class AccessToken < Beez::OAuthResource
    def self.create
      uri = Beez.config.auth_url
      payload = {
        "grant_type":"client_credentials",
        "audience": Beez.config.audience,
        "client_id": Beez.config.client_id,
        "client_secret": Beez.config.client_secret
      }

      create_by_uri(uri: uri, payload: payload)
    end
  end
end