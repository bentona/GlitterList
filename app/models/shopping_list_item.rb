class ShoppingListItem < ActiveRecord::Base
  validates :name, presence: true
end
