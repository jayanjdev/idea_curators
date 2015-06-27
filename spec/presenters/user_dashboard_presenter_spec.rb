require 'spec_helper'

describe UserDashboardPresenter do
  let(:user) { create(:user)  }
  let(:presenter) { UserDashboardPresenter.new(user) }
  let(:idea_1) { FactoryGirl.create(:idea)  }
  let(:idea_2) { FactoryGirl.create(:idea)  }
  let(:idea_3) { FactoryGirl.create(:idea)  }
  let(:initiative_1) { FactoryGirl.create(:initiative)  }
  let(:initiative_2) { FactoryGirl.create(:initiative)  }
  let(:initiative_3) { FactoryGirl.create(:initiative)  }
  let(:lead_1) { FactoryGirl.create(:lead)  }
  let(:lead_2) { FactoryGirl.create(:lead)  }
  let(:lead_3) { FactoryGirl.create(:lead)  }

  describe '#ideas' do
    it 'returns list of ideas created or updated in last 7 days' do
      Timecop.freeze(8.days.ago) { idea_1 } 
      Timecop.freeze(10.days.ago) { idea_2 } 
      Timecop.freeze(5.days.ago) { idea_3 } 
      Timecop.freeze(3.days.ago) { idea_2.touch } 
      ideas = presenter.ideas.map(&:id)
      expect(ideas.count).to eql(2)
      expect(ideas).to include(idea_2.id)
      expect(ideas).to include(idea_3.id)
    end
  end

  describe '#updated_ideas' do
    it 'returns only ideas updated in the last 7 days ' do
      Timecop.freeze(9.days.ago) { idea_1 } 
      Timecop.freeze(4.days.ago) { idea_2 } 
      Timecop.freeze(5.days.ago) { idea_3 } 
      Timecop.freeze(3.days.ago) { idea_2.touch } 
      Timecop.freeze(6.days.ago) { idea_1.touch } 
      ideas = presenter.updated_ideas.map(&:id)
      expect(ideas.count).to eql(1)
      expect(ideas).to include(idea_1.id)
    end
  end

  describe '#new_ideas' do
    it 'returns only ideas created new in the last 7 days ' do
      Timecop.freeze(8.days.ago) { idea_1 } 
      Timecop.freeze(4.days.ago) { idea_2 } 
      Timecop.freeze(5.days.ago) { idea_3 } 
      Timecop.freeze(3.days.ago) { idea_2.touch } 
      ideas = presenter.new_ideas.map(&:id)
      expect(ideas.count).to eql(2)
      expect(ideas).to include(idea_2.id)
      expect(ideas).to include(idea_3.id)
    end
  end

  describe '#initiatives' do
    it 'returns list of initiatives created or updated in last 7 days' do
      Timecop.freeze(8.days.ago) { initiative_1 } 
      Timecop.freeze(10.days.ago) { initiative_2 } 
      Timecop.freeze(5.days.ago) { initiative_3 } 
      Timecop.freeze(3.days.ago) { initiative_2.touch } 
      initiatives = presenter.initiatives.map(&:id)
      expect(initiatives.count).to eql(2)
      expect(initiatives).to include(initiative_2.id)
      expect(initiatives).to include(initiative_3.id)
    end
  end

  describe '#updated_initiatives' do
    it 'returns only initiatives updated in the last 7 days ' do
      Timecop.freeze(9.days.ago) { initiative_1 } 
      Timecop.freeze(4.days.ago) { initiative_2 } 
      Timecop.freeze(5.days.ago) { initiative_3 } 
      Timecop.freeze(3.days.ago) { initiative_2.touch } 
      Timecop.freeze(6.days.ago) { initiative_1.touch } 
      initiatives = presenter.updated_initiatives.map(&:id)
      expect(initiatives.count).to eql(1)
      expect(initiatives).to include(initiative_1.id)
    end
  end

  describe '#new_initiatives' do
    it 'returns only initiatives created new in the last 7 days ' do
      Timecop.freeze(8.days.ago) { initiative_1 } 
      Timecop.freeze(4.days.ago) { initiative_2 } 
      Timecop.freeze(5.days.ago) { initiative_3 } 
      Timecop.freeze(3.days.ago) { initiative_2.touch } 
      initiatives = presenter.new_initiatives.map(&:id)
      expect(initiatives.count).to eql(2)
      expect(initiatives).to include(initiative_2.id)
      expect(initiatives).to include(initiative_3.id)
    end
  end

  describe '#leads' do
    it 'returns list of leads created or updated in last 7 days' do
      Timecop.freeze(8.days.ago) { lead_1 } 
      Timecop.freeze(10.days.ago) { lead_2 } 
      Timecop.freeze(5.days.ago) { lead_3 } 
      Timecop.freeze(3.days.ago) { lead_2.touch } 
      leads = presenter.leads.map(&:id)
      expect(leads.count).to eql(2)
      expect(leads).to include(lead_2.id)
      expect(leads).to include(lead_3.id)
    end
  end

  describe '#updated_leads' do
    it 'returns only leads updated in the last 7 days ' do
      Timecop.freeze(9.days.ago) { lead_1 } 
      Timecop.freeze(4.days.ago) { lead_2 } 
      Timecop.freeze(5.days.ago) { lead_3 } 
      Timecop.freeze(3.days.ago) { lead_2.touch } 
      Timecop.freeze(6.days.ago) { lead_1.touch } 
      leads = presenter.updated_leads.map(&:id)
      expect(leads.count).to eql(1)
      expect(leads).to include(lead_1.id)
    end
  end

  describe '#new_leads' do
    it 'returns only leads created new in the last 7 days ' do
      Timecop.freeze(8.days.ago) { lead_1 } 
      Timecop.freeze(4.days.ago) { lead_2 } 
      Timecop.freeze(5.days.ago) { lead_3 } 
      Timecop.freeze(3.days.ago) { lead_2.touch } 
      leads = presenter.new_leads.map(&:id)
      expect(leads.count).to eql(2)
      expect(leads).to include(lead_2.id)
      expect(leads).to include(lead_3.id)
    end
  end
end
