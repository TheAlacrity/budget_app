class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name, presence: true
  validates :category_budget, presence: true  


  def expense_total(expenses)
    total = 0
    expenses.do
  end

end
