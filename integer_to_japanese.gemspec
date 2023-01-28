# frozen_string_literal: true

require_relative "lib/integer_to_japanese/version"

Gem::Specification.new do |spec|
  spec.name = "integer_to_japanese"
  spec.version = IntegerToJapanese::VERSION
  spec.authors = ["kametter"]
  spec.email = ["kunikazu.kamei@arabato.jp"]

  spec.summary = "Integerを日本語読みに変換するgem"
  spec.description = "Integerの値を漢字、ひらがな、カタカナに変換します"
  spec.homepage = "https://github.com/kametter/integer_to_japanese"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kametter/integer_to_japanese"
  spec.metadata["changelog_uri"] = "https://github.com/kametter/integer_to_japanese/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
