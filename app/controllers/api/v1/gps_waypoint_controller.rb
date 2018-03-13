class Api::V1::GpsWaypointController < ApplicationController
protect_from_forgery unless: -> { request.format.json? }

#post /api/v1/gps
#add a new gps waypoint and a new truck using background job
#return success if all parameters are present and OK. error 400 in all other case.
  def add
begin
if(params[:longitude] && params[:latitude] && params[:sent_at] && params[:vehicle_identifier])
GpsWaypointJob.perform_async(GpsParameters())


render json: {status: 'sucess',data: :ok}
else
render json: {status: 'error',code: 400,data: 'missing parameters'}
end
rescue =>ex
puts "error ocurrido"
		logger.error "problema con el request: \n"

logger.error ex.message
render json: {status: 'error',code: 400, data: ex.message}
end





  end


#Strong parameters
def GpsParameters
par = params.permit([:longitude,:latitude,:vehicle_identifier,:sent_at])
end

end
