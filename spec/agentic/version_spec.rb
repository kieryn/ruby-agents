require "spec_helper"

RSpec.describe Agentic do
  it "has a version number" do
    expect(Agentic::VERSION).not_to be_nil
  end

  describe ".hello" do
    it "greets the world by default" do
      expect(Agentic.hello).to eq("Hello, world! I am an agent.")
    end

    it "greets a given name" do
      expect(Agentic.hello("Alice")).to eq("Hello, Alice! I am an agent.")
    end
  end
end
