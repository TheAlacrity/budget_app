class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name, presence: true
  validates :category_budget, presence: true  


  def expenses_by_category_id(category_id)
    expenses.where(category_id: category_id)
  end

  def percentage(id_category)
    percent = (self.expenses_by_category_id(id_category).total/category_budget) * 100
    "#{percent.to_i}%"
  end

  def over?(id_category)
    if category_budget < self.expenses_by_category_id(id_category).total
      over = true
    else
      over = false
    end
    over
  end


end
