lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'locale_to_js/version'
Gem::Specification.new do |s|
  s.name        = "locale_to_js"
  s.version     = LocaleToJs::VERSION
  s.summary     = "Transform your Rails locales to JS"
  s.description = "A fork of the react-on-rails rake tasks to transform your Rails locales to JS"
  s.authors     = ["Kevin Clercin"]
  s.email       = "kevin@9troisquarts.com "
  s.files       = ["lib/rails-locales-to-js.rb"]
  s.homepage    =
    "https://github.com/kclercin/locale-to-js"
  s.license       = "MIT"
  s.files = Dir["lib/**/*"]
  s.require_paths = ["lib"]
end