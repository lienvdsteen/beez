require 'concurrent'

require 'beez/configurable'
require 'beez/loggable'
require 'beez/client'
require 'beez/worker'
require 'beez/version'
require 'beez/api'
require 'beez/o_auth_resource'
require 'beez/access_token'
require 'beez/graph_ql'
require 'beez/user_tasks'

module Beez
  extend ::Beez::Configurable
  extend ::Beez::Loggable

  # class Error < StandardError; end

  def self.register_worker(worker)
    self.workers << worker
  end

  def self.workers
    @workers ||= []
  end

  def self.client
    @client ||= ::Beez::Client.new
  end
end
