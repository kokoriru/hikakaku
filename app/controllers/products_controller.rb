class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def edit; end

  def create
    @product = Product.new(product_params)
    set_sum
    if @product.save
      redirect_to @product, notice: '商品情報を登録しました。'
    else
      render :new
    end
  end

  def update
    @product.attributes = product_params
    set_sum
    if @product.update(@product.attributes)
      redirect_to @product, notice: '商品情報を更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: '商品情報を削除しました。'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_sum
    if @product.non_taxed_price.present?
      @product.price = @product.non_taxed_price * 1.1
    else
      @product.non_taxed_price = @product.price / 1.1
    end
    @product.sum_price = (@product.price * @product.quantity) + @product.shipping_fee - @product.point
    @product.avarage_sum_price = @product.sum_price / @product.weight
  end

  def product_params
    params.require(:product).permit(:lowest, :name, :quantity, :weight, :unit, :price, :non_taxed_price, :shipping_fee, :point, :store, :url, :description)
  end
end
