class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :amount, presence: true

  scope :total, -> { sum(:amount) }


end
