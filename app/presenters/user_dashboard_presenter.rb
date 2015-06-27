class UserDashboardPresenter
  attr_accessor :current_user
  MAX_HISTORY = 7

  def initialize(current_user)
    self.current_user = current_user
  end

  def ideas
    @ideas ||= Idea.where("updated_at > '#{7.days.ago.strftime('%Y-%m-%d')}'").to_a
  end

  def updated_ideas
    @updated_ideas ||= (ideas - new_ideas)
  end

  def new_ideas
    @new_ideas ||= ideas.select { |l| 
      l.created_at > MAX_HISTORY.days.ago
    }
  end

  def initiatives
    @initiatives ||= Initiative.where("updated_at > '#{7.days.ago.strftime('%Y-%m-%d')}'").to_a
  end

  def updated_initiatives
    @updated_initiatives ||= (initiatives - new_initiatives)
  end

  def new_initiatives
    @new_initiatives ||= initiatives.select { |l| 
      l.created_at > MAX_HISTORY.days.ago
    }
  end

  def leads
    @leads ||= Lead.where("updated_at > '#{7.days.ago.strftime('%Y-%m-%d')}'").to_a
  end

  def updated_leads
    @updated_leads ||= (leads - new_leads)
  end

  def new_leads
    @new_leads ||= leads.select { |l| 
      l.created_at > MAX_HISTORY.days.ago
    }
  end
end


