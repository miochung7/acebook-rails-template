class FriendrequestsController < ApplicationController
  before_action :set_friendrequest, only: [:show, :edit, :update, :destroy]

  # GET /friendrequests
  # GET /friendrequests.json
  def index
    @friendrequests = Friendrequest.all
  end

  # GET /friendrequests/1
  # GET /friendrequests/1.json
  def show
  end

  # GET /friendrequests/new
  def new
    @friendrequest = Friendrequest.new
  end

  # GET /friendrequests/1/edit
  def edit
  end

  # POST /friendrequests
  # POST /friendrequests.json
  def create
    @friendrequest = Friendrequest.new(friendrequest_params)

    respond_to do |format|
      if @friendrequest.save
        format.html { redirect_to @friendrequest, notice: 'Friendrequest was successfully created.' }
        format.json { render :show, status: :created, location: @friendrequest }
      else
        format.html { render :new }
        format.json { render json: @friendrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendrequests/1
  # PATCH/PUT /friendrequests/1.json
  def update
    respond_to do |format|
      if @friendrequest.update(friendrequest_params)
        format.html { redirect_to @friendrequest, notice: 'Friendrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendrequest }
      else
        format.html { render :edit }
        format.json { render json: @friendrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendrequests/1
  # DELETE /friendrequests/1.json
  def destroy
    @friendrequest.destroy
    respond_to do |format|
      format.html { redirect_to friendrequests_url, notice: 'Friendrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendrequest
      @friendrequest = Friendrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendrequest_params
      params.fetch(:friendrequest, {})
    end
end
