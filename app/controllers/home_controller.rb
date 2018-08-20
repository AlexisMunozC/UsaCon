class HomeController < ApplicationController
  before_action :authenticate_sessions

  
  def index
  end
  
  
  private
  def authenticate_sessions
    if !current_administrator && !current_student && !current_company
      redirect_to :controller => 'student/sessions', :action => 'new'
    end
  end
  
end
