# frozen_string_literal: true

require "erb"

module LocaleToJs
  module Locales
    class ToJson < Base
      private

      def file_format
        "json"
      end

      def template_translations
        @translations
      end

      def template_default
        @defaults
      end
    end
  end
end