class Api::CategoriesController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @categories = current_user.categories
      @expense_total expense_total(@categories)

      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    @category = Category.new(
                            name: params[:name],
                            budget: params[:budget],
                            user_id: current_user.id
                          )
    if @category.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @category.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @category = Category.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @category = Category.find(params[:id])
    @category.name = params[:name] || @category.name
    @category.budget = params[:budget] || @category.budget
    
    if @category.save
      render 'show.json.jbuilder'
    else 
      render json: {message: @category.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render json: {message: "Successfully destroyed products"}
  end
end
