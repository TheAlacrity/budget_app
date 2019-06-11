class Api::ExpensesController < ApplicationController
    def index
      
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
      
    end

    def update
      
    end

    def destroy
      
    end
  end


end
