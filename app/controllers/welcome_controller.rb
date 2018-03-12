class WelcomeController < ApplicationController
  def index
    render json: {
      text: 'Hello World',
      ip: request.remote_ip
    }
  end
end
