# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @transmitters = Transmitter.all
  end
end
