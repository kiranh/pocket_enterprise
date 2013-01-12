class WelcomeController < ApplicationController
	before_filter :authenticate_user!
	def index
	  @greetings = Hash.new
	  @greetings[:hello] = "world"
      respond_to do |format|
        format.html
        format.xml { render :xml => @greetings }
        format.json { render :json => @greetings.to_json }
      end
	end
end
