module Beez
  class Configuration

    attr_accessor :env, :logger, :require, :timeout, :zeebe_url, :use_access_token, :auth_url, :client_id, :client_secret, :audience

    def initialize
      @env = ENV["APP_ENV"] || ENV["RAILS_ENV"] || ENV["RACK_ENV"] || "development"
      @logger = Logger.new($stdout)
      @require = "."
      @timeout = 30
      @zeebe_url = ENV['ZEEBE_URL'] || 'localhost:26500'
      @use_access_token = false
      @auth_url = ENV['ZEEBE_AUTHORIZATION_SERVER_URL']
      @client_id = ENV['ZEEBE_CLIENT_ID']
      @client_secret = ENV['ZEEBE_CLIENT_SECRET']
      @audience = ENV['ZEEBE_AUDIENCE']
    end
  end
end
