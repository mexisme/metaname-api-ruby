module Metaname::Api
  module Configure
    attr_accessor :configuration

    def configure(parent: nil)
      self.configuration ||= Configuration.new(parent: parent)  # Initialise
      yield configuration if block_given?
    end
  end

  # This means we can do whole-process / class-level configuration:
  extend Configure

  class Configuration
    include Metaname::Api::Logger

    def self.attr_reader_parent(*attrs)
      attrs.each do |attr|
        define_method(attr) { instance_variable_get("@#{attr}") || _parent.public_send(attr) }
      end
    end

    attr_reader :_parent
    attr_reader_parent :uri, :account_reference, :api_key
    attr_writer :uri, :account_reference, :api_key

    def initialize(parent: nil)
      @_parent = parent
    end
  end
end
