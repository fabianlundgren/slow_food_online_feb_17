class Dish < ApplicationRecord
  validates_presence_of :name, :price

  belongs_to :menu, dependent: :destroy
end
