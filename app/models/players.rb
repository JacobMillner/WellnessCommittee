class Players < ActiveRecord::Base
  belongs_to :wuser
  validates :name, presence: true
end
