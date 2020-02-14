# Sortable table columns: http://railscasts.com/episodes/228-sortable-table-columns
# Authorization: http://railscasts.com/episodes/250-authentication-from-scratch-revised
class ItemsController < ApplicationController
  before_action :authorize
  helper_method :sort_column, :sort_direction
  # layout "print", only: [:print]

  def index
    # Ransack railcast    http://railscasts.com/episodes/370-ransack?view=asciicast
    @search = Item.search(params[:q])
    @items = @search.result
#    @items = Item.order(sort_column + ' ' + sort_direction)
  end

  def edit
    @item = Item.where(JMENO: params[:jmeno], PRIJMENI: params[:prijmeni]).find(params[:id])
  end

  def update
    @item = Item.where(JMENO: params[:orig_jmeno], PRIJMENI: params[:orig_prijmeni]).find(params[:id])

    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def print
    Rails.logger.info("----------- params in print: #{params}")
    @item = Item.where(JMENO: params[:jmeno], PRIJMENI: params[:prijmeni]).find(params[:id])
  end

  def show
    @item = Item.where(JMENO: params[:jmeno], PRIJMENI: params[:prijmeni]).find(params[:id])
  end

  def new
    @item = Item.new
    @type = params[:type]
  end

  def create
    @item = Item.new(item_params)
    Rails.logger.info("----------- item: #{@item.inspect}")
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.where(JMENO: params[:jmeno], PRIJMENI: params[:prijmeni]).find(params[:id])
    @item.destroy
    
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:JMENO, :PRIJMENI, :ROD_CISLO)
  end

  def sort_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "PRIJMENI"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
