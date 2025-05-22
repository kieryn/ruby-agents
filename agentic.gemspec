Gem::Specification.new do |spec|
  spec.name          = "agentic"
  spec.version       = File.read(File.expand_path("lib/agentic/version.rb", __dir__)).match(/VERSION\s*=\s*"([^"]+)"/)[1]
  spec.authors       = ["Kieryn Phipps"]
  # spec.email         = [""]
  spec.summary       = "A lightweight framework for building agentic applications in Ruby."
  spec.description   = "Agentic provides primitives and helpers for constructing agent-based applications, where agents can observe, reason, and act."
  spec.homepage      = "https://github.com/your_username/agentic"
  spec.license       = "MIT"

  # Ruby version
  spec.required_ruby_version = Gem::Requirement.new(
    ">= 3.1.0",
    "< 4.0.0"
  )

  spec.files         = Dir.glob("lib/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  # Development dependencies
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
