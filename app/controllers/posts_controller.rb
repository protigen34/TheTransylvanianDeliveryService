class PostsController < ApplicationController
    def index
        @content_first = 'this is a sample';
        @content_second = 'sample 2';
    end
    
    def new
        
    end
    
def create
  @product = Product.new(product_params)

  respond_to do |format|
    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end
        
    def
    
    def edit
        
    end
    
    def update
    
    end

    def show
        
    end
    
    def destroy
        
    end
   
end

