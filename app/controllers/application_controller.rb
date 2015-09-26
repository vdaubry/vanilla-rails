class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def monitoring
    db_status = User.count >= 0
    render json: {database: db_status }
  end
end
