require "locale_to_js/utils"
require 'locale_to_js/version'
require 'locale_to_js/configuration'
require "locale_to_js/locales/base"
require "locale_to_js/locales/to_js"
require "locale_to_js/locales/to_json"

# Charger les tâches seulement si Rake est défini
if defined?(Rake)
  rakefile = File.expand_path('../tasks/locale.rake', __FILE__)
  load rakefile if File.exist?(rakefile)
end