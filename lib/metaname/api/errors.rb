module Metaname::Api
  module Logger
    attr_writer :logger
    def logger
      @logger ||= Logging.logger[self]
    end
  end
end
