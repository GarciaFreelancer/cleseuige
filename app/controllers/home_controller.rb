class HomeController < ApplicationController
  def index
    @categories = Category.all.paginate(:page => params[:page], :per_page => 4)
  end

  def about 
  end

  def contact 
  end
end
