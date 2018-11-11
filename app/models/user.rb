class User < ApplicationRecord
  validates :username, presence: true, 
                       length: { maximum: 50 }, 
                       uniqueness: true

  has_many :meal_plans
  serialize :meal_plans
end
