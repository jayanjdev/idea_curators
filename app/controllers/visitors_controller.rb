class VisitorsController < ApplicationController
  def index
    @presenter = UserDashboarPresenter.new(current_user)
  end
end
