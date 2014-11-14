class Company < ActiveRecord::Base
  has_many :classifiers
  has_many :categories, through: :classifiers
  validates :name, presence: true
end