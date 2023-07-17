class ProductController < ApplicationController
  def index
    @product = Product.all
    render json: {alldata: @product}
  end
  
  def show
    @products = Product.find(params[:id])
    render json: {data: @products}
  end
  
  def create
    @products = Product.new(product_params)

    if @products 
      @products.save
      render json: { new_product: @products }
    else
      render json: @products.errors, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product
      @product.update(product_params)
      render json: {message: "updated successfull"}
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
       render json: {message: "deleted successfull"}
    else
       render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :desc, :price)
  end

end
