class Api::DogsController < ApplicationController

  def index
  search_term = params[:search]
    description = HTTP
                  .headers("X-Api-Key" => 'Rails.application.credencials.dogs_api[:dog_key]')
                  .get("https://dog.ceo/api/breed/#{ search_term }/images/random")
      @dogs = description.parse
     render 'index.json.jb'         
  end


end
