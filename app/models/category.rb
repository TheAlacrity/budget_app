class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name, presence: true
  validates :category_budget, presence: true  


  def expense_total(categories)
    total = 0
    categories.each do |category|
      total += category.expense.amount
    end
    total

  end

  scope :total, -> { sum(:amount) }

end
