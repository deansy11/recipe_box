class Recipe < ApplicationRecord
  has_many :ingredient
  has_many :direction
end
