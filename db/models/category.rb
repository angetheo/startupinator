class Category < ActiveRecord::Base
  has_many :classifiers
  has_many :companies, through: :classifiers
  validates :name, presence: true
end