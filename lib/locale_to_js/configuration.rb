# frozen_string_literal: true

# rubocop:disable Metrics/ClassLength

module LocaleToJs
  def self.configure
    yield(configuration)
    configuration.setup_config_values
  end

  def self.configuration
    @configuration ||= Configuration.new(
      i18n_output_format: nil
    )
  end

  class Configuration
    attr_accessor :i18n_dir, :i18n_yml_dir, :i18n_output_format, :i18n_yml_safe_load_options

    # rubocop:disable Metrics/AbcSize
    def initialize(i18n_dir: nil, i18n_yml_dir: nil, i18n_output_format: nil, i18n_yml_safe_load_options: nil)
      self.i18n_dir = i18n_dir
      self.i18n_yml_dir = i18n_yml_dir
      self.i18n_output_format = i18n_output_format
      self.i18n_yml_safe_load_options = i18n_yml_safe_load_options
    end

    # on ReactOnRails
    def setup_config_values
    end
  end
end
# rubocop:enable Metrics/ClassLength