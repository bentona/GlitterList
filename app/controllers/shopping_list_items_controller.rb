class ShoppingListItemsController < ApplicationController
  before_action :set_shopping_list_item, only: [:show, :toggle, :update, :delete]
  before_action :set_all_items, only: [:index, :delete_items]

  # GET /shopping_list_items
  # GET /shopping_list_items.json
  def index

  end

  # GET /shopping_list_items/1
  # GET /shopping_list_items/1.json
  def show
  end

  # GET /shopping_list_items/new
  def new
    @shopping_list_item = ShoppingListItem.new
  end

  def delete_items
  end

  # POST /shopping_list_items
  # POST /shopping_list_items.json
  def create
    @shopping_list_item = ShoppingListItem.new(shopping_list_item_params)
    @shopping_list_item.save
    redirect_to shopping_list_items_url
  end

  def toggle
    respond_to do |format|
      @shopping_list_item.update(need: !@shopping_list_item.need)
      format.html { redirect_to shopping_list_items_url }
      format.json { render :index, status: :ok}
    end
  end

  # DELETE /shopping_list_items/1
  # DELETE /shopping_list_items/1.json
  def delete
    @shopping_list_item.destroy
    respond_to do |format|
      format.html { redirect_to delete_items_path, notice: 'Shopping list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_list_item
      @shopping_list_item = ShoppingListItem.find(params[:id])
    end

    def set_all_items
      @shopping_list_items = ShoppingListItem.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_list_item_params
      params.require(:shopping_list_item).permit(:name, :need)
    end
end
