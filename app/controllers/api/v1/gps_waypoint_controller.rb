class Api::V1::GpsWaypointController < ApplicationController
  def add
AddGpsWaypointJob.perform_later
GpsWaypointJob.perform_async


  end

  def list
  end
end
