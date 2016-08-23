class RequestsController < ApplicationController
  protect_from_forgery :except => :create
  def index
  end

  def create
    ActionCable.server.broadcast(
      "request_channel",
      method: request.method,
      path: request.path,
      params: request.body.read
    )
    head :ok
  end
end
