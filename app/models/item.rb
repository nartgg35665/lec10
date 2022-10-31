class Item < ApplicationRecord
  belongs_to :user
  has_many:inventory ,dependent: :destroy
end
