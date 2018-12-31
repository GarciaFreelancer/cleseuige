class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @subscriptions = current_user.subscriptions.order("created_at ASC").paginate(:page => params[:page], :per_page => 6)
  end
end
