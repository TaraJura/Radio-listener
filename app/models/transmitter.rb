# frozen_string_literal: true

class Transmitter < ApplicationRecord
  has_one_attached :audio
end
