class CartLinesController < ApplicationController
  before_action :set_cart_line, only: [:show, :edit, :update, :destroy]

  # GET /cart_lines
  # GET /cart_lines.json
  def index
    @cart_lines = CartLine.all
  end

  # GET /cart_lines/1
  # GET /cart_lines/1.json
  def show
  end

  # GET /cart_lines/new
  def new
    @cart_line = CartLine.new
  end

  # GET /cart_lines/1/edit
  def edit
  end

  # POST /cart_lines
  # POST /cart_lines.json
  def create
    @cart_line = CartLine.new(cart_line_params)

    respond_to do |format|
      if @cart_line.save
        format.html { redirect_to @cart_line, notice: 'Cart line was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cart_line }
      else
        format.html { render action: 'new' }
        format.json { render json: @cart_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_lines/1
  # PATCH/PUT /cart_lines/1.json
  def update
    respond_to do |format|
      if @cart_line.update(cart_line_params)
        format.html { redirect_to @cart_line, notice: 'Cart line was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @cart_line }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cart_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_lines/1
  # DELETE /cart_lines/1.json
  def destroy
    @cart_line.destroy
    respond_to do |format|
      format.html { redirect_to cart_lines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_line
      @cart_line = CartLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_line_params
      params.require(:cart_line).permit(:cart_id, :status, :item_id, :note, :price_in_cents, :qty)
    end
end
