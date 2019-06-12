class ChangeCategoryBudgetToCategory < ActiveRecord::Migration[5.2]
  def change  
    rename_table(:category_budgets, :categories)
  end
end
