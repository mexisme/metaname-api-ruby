module Metaname::Api
  class Client
    ## Might name-clash with the RPC methods:
    # include Logger

    def initialize
      # If no config is provided, fall-back to the class-level config:
      @configuration = Configuration.new(parent: Metaname::Api.configuration)
      yield @configuration if block_given?
      @rpc = JsonRpc::Client.connect(@configuration.uri) {|args| [@configuration.account_reference, @configuration.api_key] + args }
    end

    def method_missing(method, *args)
      @rpc.call method, *args
    end
  end
end
