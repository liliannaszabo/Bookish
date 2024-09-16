class Copy < ApplicationRecord
  belongs_to :book

  validates :due_date, presence: true
  validates :borrower, presence: true
end