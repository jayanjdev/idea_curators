class VisitorsController < ApplicationController
  def index
    @presenter = UserDashboardPresenter.new(current_user)
  end
end
