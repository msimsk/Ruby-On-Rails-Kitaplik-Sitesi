class YorumsController < ApplicationController
  before_action :set_yorum, only: [:show, :edit, :update, :destroy]

  #eklenen kısımlar
  before_action :set_kitap, only: [:create, :destroy]
  before_action :authenticate_user!, only: [:create, :destroy]

  # GET /yorums
  # GET /yorums.json
  def index
    @yorums = Yorum.all
  end

  # GET /yorums/1
  # GET /yorums/1.json
  def show
  end

  # GET /yorums/new
  def new
    @yorum = Yorum.new
  end

  # GET /yorums/1/edit
  def edit
  end

  # POST /yorums
  # POST /yorums.json
  def create
    #@yorum = Yorum.new(yorum_params)
    
    #eklenen kısımlar
    #@yorum.kitap = @kitap    
    #@yorum.user = current_user

    @yorum = Yorum.new(yorum_params)
    @yorum.kitap = @kitap
    @yorum.user = current_user

    respond_to do |format|
      if @yorum.save
        format.html { redirect_to @kitap, notice: 'Yorum yapıldı.' }
        format.json { render :show, status: :created, location: @yorum }
      else
        format.html { render :new }
        format.json { render json: @yorum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yorums/1
  # PATCH/PUT /yorums/1.json
  def update
    respond_to do |format|
      if @yorum.update(yorum_params)
        format.html { redirect_to @yorum, notice: 'Yorum was successfully updated.' }
        format.json { render :show, status: :ok, location: @yorum }
      else
        format.html { render :edit }
        format.json { render json: @yorum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yorums/1
  # DELETE /yorums/1.json
  def destroy
    @yorum.destroy
    respond_to do |format|
      format.html { redirect_to @kitap, notice: 'Yorum silindi.' }
      format.json { head :no_content }
    end
  end

  private
    #eklenen kısımlar
    def set_kitap
      @kitap = Kitap.find(params[:kitap_id])      
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_yorum
      @yorum = Yorum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yorum_params
      params.require(:yorum).permit(:mesaj)
    end
end
