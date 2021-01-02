# Helper method to render rails objects as json response with http status codes
module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
