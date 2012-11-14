class ContactUserAssocsController < ApplicationController
  # GET /contact_user_assocs
  # GET /contact_user_assocs.json
  def index
    @contact_user_assocs = ContactUserAssoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_user_assocs }
    end
  end

  # GET /contact_user_assocs/1
  # GET /contact_user_assocs/1.json
  def show
    @contact_user_assoc = ContactUserAssoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_user_assoc }
    end
  end

  # GET /contact_user_assocs/new
  # GET /contact_user_assocs/new.json
  def new
    @contact_user_assoc = ContactUserAssoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_user_assoc }
    end
  end

  # GET /contact_user_assocs/1/edit
  def edit
    @contact_user_assoc = ContactUserAssoc.find(params[:id])
  end

  # POST /contact_user_assocs
  # POST /contact_user_assocs.json
  def create
    @contact_user_assoc = ContactUserAssoc.new(params[:contact_user_assoc])

    respond_to do |format|
      if @contact_user_assoc.save
        format.html { redirect_to @contact_user_assoc, notice: 'Contact user assoc was successfully created.' }
        format.json { render json: @contact_user_assoc, status: :created, location: @contact_user_assoc }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_user_assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_user_assocs/1
  # PUT /contact_user_assocs/1.json
  def update
    @contact_user_assoc = ContactUserAssoc.find(params[:id])

    respond_to do |format|
      if @contact_user_assoc.update_attributes(params[:contact_user_assoc])
        format.html { redirect_to @contact_user_assoc, notice: 'Contact user assoc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_user_assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_user_assocs/1
  # DELETE /contact_user_assocs/1.json
  def destroy
    @contact_user_assoc = ContactUserAssoc.find(params[:id])
    @contact_user_assoc.destroy

    respond_to do |format|
      format.html { redirect_to contact_user_assocs_url }
      format.json { head :no_content }
    end
  end
end
