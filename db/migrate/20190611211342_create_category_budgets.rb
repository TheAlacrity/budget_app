class CreateCategoryBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :category_budgets do |t|
      t.string :name
      t.decimal "budget", precision: 11, scale: 2
      t.integer :user_id

      t.timestamps
    end
  end
end
