class Ingredient < ApplicationRecord
  include PgSearch

  belongs_to :recipe
  accepts_nested_attributes_for :recipe, :reject_if => :all_blank

  multisearchable against: %i(ingredient)
end
