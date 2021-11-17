class BloggsController < ApplicationController
  before_action :set_blogg, only: %i[ show edit update destroy toggle_status]

  # GET /bloggs or /bloggs.json
  def index
    @bloggs = Blogg.all
    @page_title = "My Portfolio Blog"
  end

  # GET /bloggs/1 or /bloggs/1.json
  def show
    @page_title = @blogg.title
    @seo_keywords = @blogg.body
  end

  # GET /bloggs/new
  def new
    @blogg = Blogg.new
  end

  # GET /bloggs/1/edit
  def edit
  end

  # POST /bloggs or /bloggs.json
  def create
    @blogg = Blogg.new(blogg_params)

    respond_to do |format|
      if @blogg.save
        format.html { redirect_to @blogg, notice: "Blogg was successfully created." }
        format.json { render :show, status: :created, location: @blogg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloggs/1 or /bloggs/1.json
  def update
    respond_to do |format|
      if @blogg.update(blogg_params)
        format.html { redirect_to @blogg, notice: "Blogg was successfully updated." }
        #format.json { render :show, status: :ok, location: @blogg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        #format.json { render json: @blogg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloggs/1 or /bloggs/1.json
  def destroy
    @blogg.destroy
    respond_to do |format|
      format.html { redirect_to bloggs_url, notice: "Blogg was successfully destroyed." }
      #format.json { head :no_content }
    end
  end

  def toggle_status
    if @blogg.draft?
      @blogg.published! 
    elsif @blogg.published?
      @blogg.draft! 
    end
    redirect_to bloggs_url, notice: "Post status has been updated"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogg
      #@blogg = Blogg.find(params[:id])
      @blogg = Blogg.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogg_params
      params.require(:blogg).permit(:title, :body)
    end


end
