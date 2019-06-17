class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :expenses
  has_many :categories

  def expense_total
    expenses.total
  end

  def percentage(budget, total)
    percent = (total/budget) * 100
    "#{percent.to_i}%"
  end

  def over?(budget, total)
    if total > budget
      over = true
    else
      over = false
    end
    over
  end

end

