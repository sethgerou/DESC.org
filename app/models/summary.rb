class Summary < ApplicationRecord
  has_many :links
  validates_presence_of :heading, :body
end
