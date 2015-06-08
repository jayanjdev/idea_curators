class CreateProfileForOldUsers < ActiveRecord::Migration
  def change
    User.all.map { |u| 
      unless  Profile.where(user_id: u.id).first
        Profile.create(user_id: u.id)
      end
    }
  end
end
