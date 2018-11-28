class MealPlan < ApplicationRecord
  belongs_to :user
  has_one :restriction
  has_many :dishes

  validates :name, presence: true
  validates :date, presence: true

  serialize :list_of_dishes

  accepts_nested_attributes_for :dishes

end
