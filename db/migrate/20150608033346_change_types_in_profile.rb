class ChangeTypesInProfile < ActiveRecord::Migration
  def change
     change_column :profiles, :offerings, :text
     change_column :profiles, :objective, :text
  end
end
