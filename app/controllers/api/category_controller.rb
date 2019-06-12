class Api::CategoryController < ApplicationController

  def index
    
  end
  
  def create
    t.string "name"
    t.decimal "budget", precision: 11, scale: 2
    t.integer "user_id" 
    @category = Category.new(
                            name: params[:name],
                            budget: params[:budget],
                            user_id: current_user.id #1
                          )
    if @category.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @category.errors.full_messages }, status: :unprocessable_entity
    end
  end


end
