class PlayersController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    # Endpoint para obtener todos los jugadores => http://localhost:3000/api/v1/players
    result = RestClient.get('http://localhost:3000/api/v1/players')
    @players = JSON.parse(result) #
    # binding.break reemplaza al raise - hace un stop -
  end

  def show
    #Endpoint para obtener un jugador => http://localhost:3000/api/v1/players
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
