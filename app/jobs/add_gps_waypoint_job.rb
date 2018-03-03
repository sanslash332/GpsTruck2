class AddGpsWaypointJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
puts "agregando un camionsito"

  end
end
