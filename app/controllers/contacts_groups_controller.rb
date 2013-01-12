class ContactsGroupsController < ApplicationController
  # GET /contacts_groups
  # GET /contacts_groups.json
  def index
    @contacts_groups = ContactsGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts_groups }
    end
  end

  # GET /contacts_groups/1
  # GET /contacts_groups/1.json
  def show
    @contacts_group = ContactsGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contacts_group }
    end
  end

  # GET /contacts_groups/new
  # GET /contacts_groups/new.json
  def new
    @contacts_group = ContactsGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contacts_group }
    end
  end

  # GET /contacts_groups/1/edit
  def edit
    @contacts_group = ContactsGroup.find(params[:id])
  end

  # POST /contacts_groups
  # POST /contacts_groups.json
  def create
    @contacts_group = ContactsGroup.new(params[:contacts_group])

    respond_to do |format|
      if @contacts_group.save
        format.html { redirect_to @contacts_group, notice: 'Contacts group was successfully created.' }
        format.json { render json: @contacts_group, status: :created, location: @contacts_group }
      else
        format.html { render action: "new" }
        format.json { render json: @contacts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contacts_groups/1
  # PUT /contacts_groups/1.json
  def update
    @contacts_group = ContactsGroup.find(params[:id])

    respond_to do |format|
      if @contacts_group.update_attributes(params[:contacts_group])
        format.html { redirect_to @contacts_group, notice: 'Contacts group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contacts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts_groups/1
  # DELETE /contacts_groups/1.json
  def destroy
    @contacts_group = ContactsGroup.find(params[:id])
    @contacts_group.destroy

    respond_to do |format|
      format.html { redirect_to contacts_groups_url }
      format.json { head :no_content }
    end
  end
end
