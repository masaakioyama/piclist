class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /pics
  # GET /pics.json
  def index
    # @pics = Pic.all
    @search = Pic.search(params[:q])
    @pics = @search.result.order(title: :desc)
    # @pics = Pic.all.order(title: :desc)
    @pics = @pics.page(params[:page]).per(15)
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
  end

  # GET /pics/new
  def new
    @pic = Pic.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pic = Pic.new(pic_params)

    respond_to do |format|
      if @pic.save
        format.html { redirect_to @pic, notice: '新規作成完了' }
        format.json { render :show, status: :created, location: @pic }
      else
        format.html { render :new }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: '更新完了' }
        format.json { render :show, status: :ok, location: @pic }
      else
        format.html { render :edit }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url, notice: '削除完了' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:img, :title, :englishtitle, :made, :technique, :gosu, :width, :height, :award, :awardday, :sellstatus, :solidly, :soldprice, :buyer, :buyerzip, :buyeraddress, :buyerphone, :buyeremail, :remark)
    end
end
