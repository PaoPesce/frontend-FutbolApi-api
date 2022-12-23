class PlayersController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    # Endpoint para obtener todos los jugadores => http://localhost:3000/api/v1/players
    result = RestClient.get('http://localhost:3001/api/v1/players')
    @players = JSON.parse(result)
    # binding.break reemplaza al raise - hace un stop -
  end

  def show
    # Endpoint para obtener un jugador => http://localhost:3000/api/v1/players
    result = RestClient.get("http://localhost:3001/api/v1/players/#{params[:id]}")
    @player = JSON.parse(result)
  end

  def new
  end

  def create
    result = RestClient.post('http://localhost:3001/api/v1/players', { 'name' => params['name'], 'team' => params['team'] }.to_json,
    {content_type: :json, accept: :json} )

    if result.code == 201
      redirect_to players_path
    else
      render '/players/new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
