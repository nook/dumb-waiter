require 'sinatra/base'

class Waiter < Sinatra::Base

  def initialize
    super
  end

  #home page: show methods and params
  get '/' do
    "Hello, welcome to Dumb Waiter"
  end

  get '/recipes' do
    {recipes: [{id: 1, name: "Baked Oatmeal", meal: "Breakfast"}, {id: 2, name:"Latte", meal: "Beverage"}]}.to_json
  end

  post '/recipe_by_id/:id' do
    params[:id] == 1.to_s ? JSON(oatmeal) : latte
  end

  private
    def oatmeal
      {
          name: "Baked Oatmeal",
          description: "A classic Amish dish made vegan",
          serves: 8,
          prep: "5 Minutes",
          cook_time: "40 Minutes",
          Ingredients: [
              {
                  quantity: 1,
                  uom: "cup",
                  item: "cooked spelt"
              },
              {
                  quantity: 1,
                  uom: "cup",
                  item: "dry steel cut oats"
              },
              {
                  quantity: 1,
                  uom: "cup",
                  item: "dry rolled oats"
              },
              {
                  quantity: 0.25,
                  uom: "cup",
                  item: "packed brown sugar"
              },
              {
                  quantity: 0.25,
                  uom: "cup",
                  item: "chia seeds"
              }
          ],
          preparation: [
              {
                  step: 1,
                  instruction: "Preheat oven to 350 degrees F."
              },
              {
                  step: 2,
                  instruction: "Grease an 8 x 8 baking pan"
              }
          ]
      }
    end

    def latte

    end

end
