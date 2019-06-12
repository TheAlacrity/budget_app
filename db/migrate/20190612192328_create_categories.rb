class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    # create_table :categories do |t|
    #   t.string :name
    #   t.decimal :category_budget, precision: 11, scale: 2
    #   t.integer :user_id

    #   t.timestamps
    # end
    
    rename_column :category_budgets, :budget, :category_budget
  end
end
