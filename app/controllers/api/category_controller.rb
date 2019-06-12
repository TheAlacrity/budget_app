class Api::CategoryController < ApplicationController

  def index
    
  end



  def create
    t.string "name"
    t.decimal "budget", precision: 11, scale: 2
    t.integer "user_id" 
    @catagory = Catagory.new(
                            name: params[:name],
                            budget: params[:budget],
                            user_id: current_user.id #1
                          )
    if @Catagory.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @Catagory.errors.full_messages }, status: :unprocessable_entity
    end
  end


end
