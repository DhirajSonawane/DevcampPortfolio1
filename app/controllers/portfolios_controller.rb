class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

    def create
      @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

      respond_to do |format|
        if @portfolio_item.save
          format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live." }
          #in place of portfolios path if we write @portfolio_item it will render it to @portfolio_item
          #format.json { render :show, status: :created, location: @blogg }
        else
          format.html { render :new, status: :unprocessable_entity }
          #format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
        end
      end
    end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

    def update
      @portfolio_item = Portfolio.find(params[:id])

      respond_to do |format|
        if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
          format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
          #format.json { render :show, status: :ok, location: @blogg }
        else
          format.html { render :edit, status: :unprocessable_entity }
          #format.json { render json: @blogg.errors, status: :unprocessable_entity }
        end
      end
    end

end
