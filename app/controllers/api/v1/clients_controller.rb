class Api::V1::ClientsController < ApplicationController

  def index 
    clients = Client.all 
    render json: clients # instead of rendering erb file
  end 

end
