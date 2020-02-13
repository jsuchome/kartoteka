# Sortable table columns: http://railscasts.com/episodes/228-sortable-table-columns
class ItemsController < ApplicationController
  helper_method :sort_column, :sort_direction
  # layout "print", only: [:print]

  def index
    @items = Item.order(sort_column + ' ' + sort_direction)

# render variants: [:mobile, :desktop]
# -> index.html+mobile.erb
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
