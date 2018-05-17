class UserserversController < ApplicationController
  before_action :set_userserver, only: [:show, :edit, :update, :destroy]

  # GET /userservers
  # GET /userservers.json
  def index
    @userservers = Userserver.all
     @users=User.all
     @userfiles=Userfile.all
  end

  # GET /userservers/1
  # GET /userservers/1.json
  def show
    @users=User.all
    @userfiles=Userfile.all
  end

  # GET /userservers/new
  def new
    @userserver = Userserver.new
    @users=User.all
    @userfiles=Userfile.all
  end

  # GET /userservers/1/edit
  def edit
    @users=User.all
    @userfiles=Userfile.all
  end

  # POST /userservers
  # POST /userservers.json
  def create
    @userserver = Userserver.new(userserver_params)

    respond_to do |format|
      if @userserver.save
        format.html { redirect_to @userserver, notice: 'Userserver was successfully created.' }
        format.json { render :show, status: :created, location: @userserver }
      else
        format.html { render :new }
        format.json { render json: @userserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userservers/1
  # PATCH/PUT /userservers/1.json
  def update
    respond_to do |format|
      if @userserver.update(userserver_params)
        format.html { redirect_to @userserver, notice: 'Userserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @userserver }
      else
        format.html { render :edit }
        format.json { render json: @userserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userservers/1
  # DELETE /userservers/1.json
  def destroy
    @userserver.destroy
    respond_to do |format|
      format.html { redirect_to userservers_url, notice: 'Userserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userserver
      @userserver = Userserver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userserver_params
      params.require(:userserver).permit(:online, :owner, :user_id, :userfile_id)
    end
end
