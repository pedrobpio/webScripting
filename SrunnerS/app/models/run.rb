class Run < ActiveRecord::Base
  belongs_to :user
  validates :distance, presence: true
  validates :distance, :numericality => { :greater_than => 0}
end
