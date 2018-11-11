class MealPlan < ApplicationRecord
  belongs_to :user
  has_many :dishes

  serialize :list_of_dishes

end
