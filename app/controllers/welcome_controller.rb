class WelcomeController < ApplicationController
  def index
    render json: {
      text: 'Hello World 9',
      ip: Socket.ip_address_list.detect(&:ipv4_private?).try(:ip_address)
    }
  end
end
