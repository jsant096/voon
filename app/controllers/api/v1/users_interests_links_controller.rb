class API::V1::UsersInterestsLinksController < ApplicationController
  before_action :set_users_interests_link, only: [:show, :edit, :update, :destroy]

  # GET /users_interests_links
  # GET /users_interests_links.json
  def index
    @users_interests_links = UsersInterestsLink.all
  end

  # GET /users_interests_links/1
  # GET /users_interests_links/1.json
  def show
  end

  # GET /users_interests_links/new
  def new
    @users_interests_link = UsersInterestsLink.new
  end

  # GET /users_interests_links/1/edit
  def edit
  end

  # POST /users_interests_links
  # POST /users_interests_links.json
  def create
    @users_interests_link = UsersInterestsLink.new(users_interests_link_params)

    respond_to do |format|
      if @users_interests_link.save
        format.html { redirect_to @users_interests_link, notice: 'Users interests link was successfully created.' }
        format.json { render :show, status: :created, location: @users_interests_link }
      else
        format.html { render :new }
        format.json { render json: @users_interests_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_interests_links/1
  # PATCH/PUT /users_interests_links/1.json
  def update
    respond_to do |format|
      if @users_interests_link.update(users_interests_link_params)
        format.html { redirect_to @users_interests_link, notice: 'Users interests link was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_interests_link }
      else
        format.html { render :edit }
        format.json { render json: @users_interests_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_interests_links/1
  # DELETE /users_interests_links/1.json
  def destroy
    @users_interests_link.destroy
    respond_to do |format|
      format.html { redirect_to users_interests_links_url, notice: 'Users interests link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_interests_link
      @users_interests_link = UsersInterestsLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_interests_link_params
      params[:users_interests_link]
    end
end
