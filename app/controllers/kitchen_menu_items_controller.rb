class KitchenMenuItemsController < ApplicationController
  before_action :set_kitchen_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /kitchen_menu_items
  # GET /kitchen_menu_items.json
  def index
    @kitchen_menu_items = KitchenMenuItem.all
  end

  # GET /kitchen_menu_items/1
  # GET /kitchen_menu_items/1.json
  def show
  end

  # GET /kitchen_menu_items/new
  def new
    @kitchen_menu_item = KitchenMenuItem.new
  end

  # GET /kitchen_menu_items/1/edit
  def edit
  end

  # POST /kitchen_menu_items
  # POST /kitchen_menu_items.json
  def create
    @kitchen_menu_item = KitchenMenuItem.new(kitchen_menu_item_params)

    respond_to do |format|
      if @kitchen_menu_item.save
        format.html { redirect_to @kitchen_menu_item, notice: 'Kitchen menu item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kitchen_menu_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @kitchen_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchen_menu_items/1
  # PATCH/PUT /kitchen_menu_items/1.json
  def update
    respond_to do |format|
      if @kitchen_menu_item.update(kitchen_menu_item_params)
        format.html { redirect_to @kitchen_menu_item, notice: 'Kitchen menu item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kitchen_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchen_menu_items/1
  # DELETE /kitchen_menu_items/1.json
  def destroy
    @kitchen_menu_item.destroy
    respond_to do |format|
      format.html { redirect_to kitchen_menu_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_menu_item
      @kitchen_menu_item = KitchenMenuItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitchen_menu_item_params
      params.require(:kitchen_menu_item).permit(:name, :price)
    end
end
