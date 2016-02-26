class StaticPagesController < ApplicationController
  def dashboard
    @my_pins = current_user.pins
  end
end
