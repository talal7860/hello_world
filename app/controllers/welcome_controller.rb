class WelcomeController < ApplicationController
  def index
    render json: {
      text: 'Hello World 5',
      ip: Socket.ip_address_list.detect(&:ipv4_private?).try(:ip_address)
    }
  end
end
