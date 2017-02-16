class Profile < ActiveRecord::Base
  validates :name, presence: :true
  validates :username, presence: :true
  belongs_to :user
end
