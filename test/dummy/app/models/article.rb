class Article < ApplicationRecord
  validates :contents, presents: true
end
