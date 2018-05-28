class Article < ApplicationRecord
  has_many :images
  has_many :texts
end