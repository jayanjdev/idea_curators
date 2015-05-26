class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :subject
      t.string :tags
      t.string :source
      t.integer :user_id
      t.string :details

      t.timestamps null: false
    end
  end
end
