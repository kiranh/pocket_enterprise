class Contact < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  has_and_belongs_to_many :groups
  # attr_accessible :title, :body
end
