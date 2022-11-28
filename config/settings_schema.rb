# frozen_string_literal: true

require_relative '../lib/app_settings'

AppSettings.define do
  config.validate_keys = true

  required(:database).hash do
    required(:username).value(:string)
    required(:password).value(:string)
    required(:name).value(:string)
    optional(:socket).value(:string)
  end
end
