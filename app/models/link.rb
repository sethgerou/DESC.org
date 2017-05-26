class Link < ApplicationRecord
  belongs_to :summary
  validates_presence_of :url, :text
end
