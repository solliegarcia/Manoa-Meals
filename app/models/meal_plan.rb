class MealPlan < ApplicationRecord
  has_one :user
  has_many :dishes

end
