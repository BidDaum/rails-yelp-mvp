class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
   #  validates_associated :reviews
    validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "this category is yet not referenced." }

end
