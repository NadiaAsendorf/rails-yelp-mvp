class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :phone_number, format: { with: /\A[+\d\s\-().]+\z/ }, allow_blank: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :name, :address, presence: true
end
