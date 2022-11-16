class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  CATEGORY = %w[ chinese italian japanese french belgian ]
  validates :category, presence: true, inclusion: { in: CATEGORY}

  has_many :reviews, dependent: :destroy

end
