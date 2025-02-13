# lib/railtie.rb
require 'locale_to_js'
require 'rails'

module LocaleToJs
  class Railtie < Rails::Railtie
    railtie_name :locale_to_js

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end