class WelcomeController < ApplicationController
  def index
   render json: { status: 200, message: "Mytinerary API" }
  end
end
