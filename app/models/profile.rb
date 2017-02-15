class Profile < ActiveRecord::Base
  validate :name, presence: :true
  validate :username, presence: :true
  belongs_to :user
end
