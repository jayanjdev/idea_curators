class AuthenticatedController < ApplicationController 
  before_action :authenticate_user!
  around_filter :user_time_zone, :if => :current_user

  def user_time_zone(&block)
    Time.use_zone(current_user.time_zone, &block)
  end
end
