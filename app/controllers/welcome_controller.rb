class WelcomeController < ApplicationController
  def index
    render json: {
      text: 'Hello World 10',
      ip: Socket.ip_address_list.detect(&:ipv4_private?).try(:ip_address),
      'RAILS_MASTER_KEY': ENV.fetch('RAILS_MASTER_KEY')
    }
  end
end
