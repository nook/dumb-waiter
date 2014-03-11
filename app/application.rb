require 'sinatra/base'
require_relative '../lib/recipe_service'

class Waiter < Sinatra::Base

  def initialize
    super
  end

  #home page: show methods and params
  get '/' do
    "Hello, welcome to Dumb Waiter"
  end

  get '/recipes' do
    RecipeService.get_json_data('all_recipes')  
  end

  get '/recipe_by_id/:id' do
    RecipeService.get_json_data(params[:id])
  end
end
