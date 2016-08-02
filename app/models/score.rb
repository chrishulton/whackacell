class Score < ActiveRecord::Base
  include ActiveModel::Validations

  validates :user, :points, :presence => true
  validates_numericality_of :points, :only_integer => true
end
