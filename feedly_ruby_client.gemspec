# frozen_string_literal: true

require_relative "lib/feedly_api/version"

Gem::Specification.new do |spec|
  spec.name = "feedly_ruby_client"
  spec.version = FeedlyApi::VERSION
  spec.authors = ["a5-stable"]
  spec.email = ["sh07e1916@gmail.com"]

  spec.summary = "feedly ruby api client"
  spec.description = "feedly ruby api client"
  spec.homepage = "https://github.com/a5-stable"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["source_code_uri"] = "https://github.com/a5-stable/feedly-ruby-client"
  spec.metadata["changelog_uri"] = "https://github.com/a5-stable/feedly-ruby-client"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
end
