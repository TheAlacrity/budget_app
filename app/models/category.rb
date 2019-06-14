class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name, presence: true
  validates :category_budget, presence: true  


  def expenses_by_category_id(category_id)
    expenses.where(category_id: category_id)
  end

end
