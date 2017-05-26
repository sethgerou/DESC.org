class Summary < ApplicationRecord
  has_many :links, dependent: :destroy
  validates_presence_of :heading, :body
end
