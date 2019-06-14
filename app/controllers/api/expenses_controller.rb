class Api::ExpensesController < ApplicationController
   before_action :authenticate_user 

  def index
    if current_user
      @expenses = current_user.expenses
      render 'index.json.jbuilder'
    else 
      render json: []
    end
  end

  def create
    @expense = Expense.new(
                          name: params[:name],
                          amount: params[:amount],
                          comment: params[:comment],
                          user_id: params[:user_id],
                          category_id: params[:category_id]
                          )
    if @expense.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @expense = Expense.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @expense = Expense.find(params[:id])

    @expense.name = params[:name] || @expense.name
    @expense.amount = params[:amount] || @expense.amount
    @expense.comment = params[:comment] || @expense.comment
    @expense.user_id = params[:user_id] || @expense.user_id
    @expense.category_id = params[:category_id] || @expense.category_id


    if @expense.save
      render 'show.json.jbuilder'
    else
      render json: { message: @expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    render json: {message: "Successfully destroyed expense #{@expense.name} with id #{@expense.id}"} 
  end
end
