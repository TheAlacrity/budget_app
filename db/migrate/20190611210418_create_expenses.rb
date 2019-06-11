class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal "amount", precision: 11, scale: 2
      t.string :comment
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
