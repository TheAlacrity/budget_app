class Api::CategoryController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    if current_user
      @categories = current_user.categories
      render 'index.json.jbuilder'
    else
      @categories = Category.all
      render json: []
  end


  def create
    t.string "name"
    t.decimal "budget", precision: 11, scale: 2
    t.integer "user_id" 
    @category = Category.new(
                            name: params[:name],
                            budget: params[:budget],
                            user_id: 1 # current_user.id
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
