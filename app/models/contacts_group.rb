class ContactsGroup < ActiveRecord::Base
  belongs_to :contact
  belongs_to :group
  # attr_accessible :title, :body
end
