class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :subject
      t.date :date
      t.time :start_time
      t.time :end_time
      t.text :details

      t.timestamps null: false
    end
  end
end
