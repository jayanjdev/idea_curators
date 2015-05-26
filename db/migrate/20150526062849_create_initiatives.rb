class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :subject
      t.string :tags
      t.string :source
      t.integer :user_id
      t.string :details

      t.timestamps null: false
    end
  end
end
