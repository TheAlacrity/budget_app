class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :expenses
  has_many :categories

  def expense_total
    expenses.total
  end
end
