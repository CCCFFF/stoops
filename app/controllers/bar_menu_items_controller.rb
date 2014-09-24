class BarMenuItemsController < ApplicationController
  before_action :set_bar_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /bar_menu_items
  # GET /bar_menu_items.json
  def index
    @bar_menu_items = BarMenuItem.all
  end

  # GET /bar_menu_items/1
  # GET /bar_menu_items/1.json
  def show
  end

  # GET /bar_menu_items/new
  def new
    @bar_menu_item = BarMenuItem.new
  end

  # GET /bar_menu_items/1/edit
  def edit
  end

  # POST /bar_menu_items
  # POST /bar_menu_items.json
  def create
    @bar_menu_item = BarMenuItem.new(bar_menu_item_params)

    respond_to do |format|
      if @bar_menu_item.save
        format.html { redirect_to @bar_menu_item, notice: 'Bar menu item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bar_menu_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @bar_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar_menu_items/1
  # PATCH/PUT /bar_menu_items/1.json
  def update
    respond_to do |format|
      if @bar_menu_item.update(bar_menu_item_params)
        format.html { redirect_to @bar_menu_item, notice: 'Bar menu item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bar_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar_menu_items/1
  # DELETE /bar_menu_items/1.json
  def destroy
    @bar_menu_item.destroy
    respond_to do |format|
      format.html { redirect_to bar_menu_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar_menu_item
      @bar_menu_item = BarMenuItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bar_menu_item_params
      params.require(:bar_menu_item).permit(:name, :price)
    end
end
