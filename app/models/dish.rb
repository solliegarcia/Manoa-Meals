class Dish < ApplicationRecord
  has_many :weekly_menus
  has_many :meal_plans
end
