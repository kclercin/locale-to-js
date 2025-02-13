require "locale_to_js/utils"
require 'locale_to_js/version'
require 'locale_to_js/configuration'
require "locale_to_js/locales/base"
require "locale_to_js/locales/to_js"
require "locale_to_js/locales/to_json"

module LocaleToJs
  require 'locale_to_js/railtie' if defined?(Rails)
end