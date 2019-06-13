class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name, presence: true
  validates :category_budget, presence: true  

  def category_total
    expenses.total
  end

end
