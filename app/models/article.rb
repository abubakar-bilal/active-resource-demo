class Article < ActiveRecord::Base
  validates :name, :price, :owner_id, presence: true

  belongs_to :owner
end
