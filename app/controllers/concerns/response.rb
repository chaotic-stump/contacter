module Response
  def json_response(object, status = :ok)
    render json: onject, status: status
  end
end