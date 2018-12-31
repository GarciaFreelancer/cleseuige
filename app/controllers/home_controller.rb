class HomeController < ApplicationController
  def index
    @courses = Course.all.order("created_at ASC").paginate(:page => params[:page], :per_page => 4)
    @categories = Category.all.order("created_at ASC").paginate(:page => params[:page], :per_page => 10)
  end

  def about 
  end

  def contact 
  end

  def category_courses
    @category = Category.find(params[:id])

    @list_courses = @category.courses.order("created_at ASC").paginate(:page => params[:page], :per_page => 4)

    @categories = Category.all.order("created_at ASC").paginate(:page => params[:page], :per_page => 10)
  end

end
