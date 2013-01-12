class WelcomeController < ApplicationController
	
	def index
	  @user = current_user	
	  @contacts = @user.contacts # all of the user's contacts
    @user.groups # all of the user's groups
      #@user.groups.find(id).contacts # all the contacts in a group
      #@user.contacts.find(id).groups # all of the groups that a contact belongs to

      respond_to do |format|
        format.html # index.html.haml
        format.json { render json: @contacts }
      end
	end
end
