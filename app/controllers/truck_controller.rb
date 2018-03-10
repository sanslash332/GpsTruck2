class TruckController < ApplicationController
  def show
@trucks = Truck.all

  end
end
