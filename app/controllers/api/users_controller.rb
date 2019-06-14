class Api::UsersController < ApplicationController

  def index
    if current_user
      @user = current_user
      @total = current_user.expenses.all.total
      @over = false
      @over = true if @total > current_user.budget
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password],
                    budget: params[:budget]
                   )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

end