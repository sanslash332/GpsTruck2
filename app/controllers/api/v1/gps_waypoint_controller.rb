class Api::V1::GpsWaypointController < ApplicationController
protect_from_forgery unless: -> { request.format.json? }

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

  def list
  end

def GpsParameters
par = params.permit([:longitude,:latitude,:vehicle_identifier,:sent_at])
end

end
