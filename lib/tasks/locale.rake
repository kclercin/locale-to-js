# frozen_string_literal: true

require "locale_to_js/locales/base"
require "locale_to_js/locales/to_js"
require "locale_to_js/locales/to_json"

namespace :locale do
  desc "Compile les fichiers de locales en fichiers JS"
  task :js, [] => [] do |_t, args|
    LocaleToJs::Locales.compile
  end
end