class Api::CategoryController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    if current_user
      @catagories = current_user.catagories
      render 'index.json.jbuilder'
    else
      @catagories = Catagory.all
      render json: []
    
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

  # def show
  #   @product = Catagory.find(params[:id])
  #   render 'show.json.jbuilder'
  # end

  # def update
  #   @product = Product.find(params[:id])
  #   @product.name = params[:name] || @product.name
  #   @product.price = params[:price] || @product.price
  #   @product.description = params[:description] || @product.description
  #   @product.material = params[:material] || @product.material
  #   @product.in_stock = params[:in_stock] || @product.in_stock
  #   @product.style = params[:style] || @product.style
  #   @product.supplier_id = params[:supplier_id] || @product.supplier_id
    

  #   if @product.save
  #     render 'show.json.jbuilder'
  #   else 
  #     render json: {message: @product.errors.full_messages }, status: :unprocessable_entity
  #   end
  end

  # def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy
  #   render json: {message: "Successfully destroyed products"}
  # end


end
