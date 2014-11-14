class Audience < ActiveRecord::Base
  validates :name, presence: true
end