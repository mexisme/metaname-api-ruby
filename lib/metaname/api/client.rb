module Metaname::Api
  class Client
    ## Might name-clash with the RPC methods:
    # include Logger

    def initialize
      # If no config is provided, fall-back to the class-level config:
      @conf = Configuration.new(parent: Metaname::Api.configuration)
      yield @conf if block_given?
      @rpc = JsonRpc::Client.connect(@conf.uri) {|args| [@conf.account_reference, @conf.api_key] + args }
    end

    def method_missing(method, *args)
      @rpc.call method, *args
    end
  end
end
