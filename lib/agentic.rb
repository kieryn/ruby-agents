# frozen_string_literal: true

# Ensure the version constant is loaded first.
require_relative "agentic/version"

# Main namespace for the Agentic framework.
module Agentic
  class Error < StandardError; end

  # Example operation to demonstrate gem functionality.
  # In a real framework this would host your core functionality.
  #
  # @return [String]
  def self.hello(name = "world")
    "Hello, #{name}! I am an agent."
  end

  # Returns the version string of the Agentic gem.
  #
  #   Agentic.version #=> "0.1.0"
  #
  # @return [String]
  def self.version
    VERSION
  end
end

# Require additional library files here as the framework grows.
